from django.shortcuts import render,redirect
from django.contrib import messages
from django.contrib.auth.models import User, auth
from django.contrib.auth import login,logout,get_user_model
from django.views.decorators.cache import never_cache
from .models import CustomUser
from django.contrib.auth import get_user_model
from admin_products.models import *
from accounts.mixins import MessageHandler
import random
from accounts.CustomBackend import *
from django.contrib.auth.decorators import login_required
from admin_products.views import *
from django.db.models import Q
from django.core.paginator import EmptyPage, PageNotAnInteger, Paginator
from django.http import JsonResponse, HttpResponse
from cart.models import *


# from guest_user.models import Guest
# from guest_user.decorators import allow_guest_user

from django.template.loader import get_template
from xhtml2pdf import pisa
from django.http import FileResponse


PRODUCTS_PER_PAGE = 4
User = get_user_model()


def index(request):
    return redirect('home')

@never_cache
def user_login(request):
    if request.user.is_superuser:
        return redirect('admin_dashboard')


    if request.user.is_authenticated:
        return redirect('login_home')
    if request.method=='POST':
        username=request.POST['username']
        password=request.POST['password']
        user=auth.authenticate(username=username,password=password)
        print(user)
        if user is not None and user.is_active==True:
            if 'guest_key' in request.session:
                p = request.session['guest_key']
                guest_cart = guestCart.objects.filter(user_ref=p)

                auth.login(request, user)
                for i in guest_cart:
                    try:
                        cart = Cart.objects.get(user=request.user,product=i.product)
                        print(cart)
                    except:
                        cart = None
                    if cart:
                        print("one")
                        Cart.objects.filter(user=request.user, product=i.product).update(quantity = cart.quantity+i.quantity)
                    else:
                        print("two")
                        k = Cart(user=request.user,product=i.product,quantity=i.quantity)
                        k.save()
                print("deleting guest cart")
                guest_cart.delete()

            print("logging in.......")
            auth.login(request,user)
            print(user.phone_number)
            messages.error(request, 'login success')
            return redirect('login_home')
        else:
            messages.error(request,'Invalid Credentials')
            return redirect('user_login')

    return render(request,'user_login.html')  


def user_signup(request) :
    if request.method=='POST':
        global new_name
        global new_username
        global new_email
        global new_phone_number
        global new_pass2

        new_name=request.POST['name']
        new_username=request.POST['username']
        new_email=request.POST['email']
        new_phone_number=request.POST['phone_number']
        new_pass1=request.POST['pass1']
        new_pass2=request.POST['pass2']
        
        if new_pass1==new_pass2:
            if User.objects.filter(email=new_email).exists():
                messages.error(request,'Email Is Already taken !')
                return redirect('user_signup')
            elif User.objects.filter(phone_number=new_phone_number).exists():
                messages.error(request,' Number is already used !')
                return redirect('user_signup')
            elif User.objects.filter(username=new_username).exists():
                    messages.error(request, 'Username taken')
                    return redirect('user_signup')

            else:
                
                otp=123456
                message_handler = MessageHandler(new_phone_number,otp).sent_otp_on_phone()
                return render(request,'signup_otp_validate.html')        
        else:
            messages.error(request, 'Password not matching')
            return redirect('user_signup')
        
    else:
        return render (request,'user_signup.html')


def signup_otp_validate(request):
    if request.method=='POST':
        otp1= int(request.POST['otp'])
        validate = MessageHandler(new_phone_number,otp1).validate()
        print("new=",new_phone_number)
        print("validate=",validate)
        if validate=="approved":
            
            user=User.objects.create_user(username=new_username,password=new_pass2,email=new_email,first_name=new_name,phone_number=new_phone_number)
            user.save()
            if 'guest_key' in request.session:
                p = request.session['guest_key']
                guest_cart = guestCart.objects.filter(user_ref=p)

                auth.login(request, user)
                for i in guest_cart:
                    try:
                        cart = Cart.objects.get(user=request.user,product=i.product)
                        print(cart)
                    except:
                        cart = None
                    if cart:
                        print("one")
                        Cart.objects.filter(user=request.user, product=i.product).update(quantity = cart.quantity+i.quantity)
                    else:
                        print("two")
                        k = Cart(user=request.user,product=i.product,quantity=i.quantity)
                        k.save()
                print("deleting guest cart")
                guest_cart.delete()
            messages.error(request, 'Account created')
            return redirect('user_login')
        else :
            messages.error(request, 'Wrong Credentials')
            return redirect('signup_otp_validate')

    return render(request,'signup_otp_validate.html')

@never_cache
def home(request):
    if request.user.is_authenticated:
        return redirect('login_home')
    # request.session.create()
    # print(request.session.session_key)
    x = ["Hampers","Others"]
    category = Category.objects.exclude(category_name__in = x)
    return render(request,'home.html',{'category':category})


@never_cache
@login_required
def login_home(request):
    if request.user.is_authenticated:
        x = ["Hampers","Others"]
        category = Category.objects.exclude(category_name__in = x)
        return render(request,'home.html',{'category':category})
    return redirect('user_login')

def hampers(request):
    # if not request.user.is_authenticated and not request.session.session_key:
    #         request.session.create()
    #         print("hamper",request.session.session_key)
    category = Category.objects.get(category_name="Hampers")
    product = Products.objects.filter(category=category).all()
    if request.user.is_authenticated:
        wishlist = Wishlist.objects.filter(user=request.user)
        wishlistItems=[]
        for i in wishlist:
            wishlistItems.append(i.product)
    else:
        wishlist={}
        wishlistItems={}
    return render(request,'products.html',{'product':product,'category':category,'wishlistItems':wishlistItems})

def others(request):
    category = Category.objects.get(category_name="Others")
    product = Products.objects.filter(category = category).all()
    if request.user.is_authenticated:
        wishlist = Wishlist.objects.filter(user=request.user)
        wishlistItems=[]
        for i in wishlist:
            wishlistItems.append(i.product)
    else:
        wishlist={}
        wishlistItems={}
    return render(request,'products.html',{'product':product,'category':category,'wishlistItems':wishlistItems})

    

@never_cache
def user_logout(request):
    if request.user.is_authenticated:
        auth.logout(request)
        messages.error(request, 'logged out')
        return redirect('index')


def products(request,id):
    # request.session.create()
    category=Category.objects.get(id=id)
    product = Products.objects.filter(category=category).all()
    price = request.GET.get('price', "")

    if 'search' in request.GET:
            search = request.GET['search']
            multiple_search = Q(Q(product_name__icontains=search))
            product = Products.objects.filter(multiple_search)
    if price:
        product = product.filter(price__lt = price).order_by(('-price'))
    # else:
    #     product = Products.objects.filter(category=category).all()
    # return render(request,'products.html',{'product':product,'category':category})
    page = request.GET.get('page',1)
    product_paginator = Paginator(product, PRODUCTS_PER_PAGE)
    try:
        product = product_paginator.page(page)
    except EmptyPage:
        product = product_paginator.page(product_paginator.num_pages)
    except:
        product = product_paginator.page(PRODUCTS_PER_PAGE)
    
    
    
    # wishlist=Wishlist.objects.all()
    if request.user.is_authenticated:
        wishlist = Wishlist.objects.filter(user=request.user)
        wishlistItems=[]
        for i in wishlist:
            wishlistItems.append(i.product)
    else:
        wishlist={}
        wishlistItems={}

    return render(request, "products.html", {"product":product,'category':category,
         'page_obj':product, 'is_paginated':True,
          'paginator':product_paginator,'wishlistItems':wishlistItems})


    



def number_check(request):
    if request.user.is_authenticated:
        return redirect('login_home')
    if request.method=='POST':
        
        global phone 
        phone=request.POST['phone_number']
        otp=123456
        message_handler = MessageHandler(phone,otp).sent_otp_on_phone()
        return redirect('otp_validate')
    return render(request,'otp_login.html')

def otp_validate(request):
    if request.user.is_authenticated:
        return redirect('login_home')
    if request.method=='POST':
        otp1= int(request.POST['otp'])
        validate = MessageHandler(phone,otp1).validate()
        print("validate=",validate)
        if validate=="approved":
            user = User.objects.get(phone_number=phone)
            if user==None:
                messages.error(request, 'Wrong Credentials')
                return redirect('number_check')
            login(request,user)
            # user=CustomBackend.authenticate(request,phone_number=phone)
            # auth.login(request,user,backend='django.contrib.auth.backends.ModelBackend')
            # print("-----")
            print ("user ",user)
            messages.error(request, 'login success')
            return redirect('login_home')
        
        messages.error(request, 'Wrong Credentials')
        return redirect('otp_validate')
        
    return render(request,'otp_validate.html')


def product_details(request,id):
    product = Products.objects.get(id=id)
    print(product)

    return render(request,'product_details.html',{'product':product})

def profile(request):
    if request.user.is_authenticated:
        address = Address.objects.filter(user = request.user).all()
        orders= Order.objects.filter(user = request.user).all()
        oldcart=OldCart.objects.filter(user = request.user).all()
        oldCart = reversed(list(oldcart))
        return render(request,'profile.html',{'address':address,'orders':orders,'oldcart':oldCart})
    return redirect('user_login')

def login_resend(request):
    otp=123456
    message_handler = MessageHandler(phone,otp).sent_otp_on_phone()
    return redirect('otp_validate')

def signup_resend(request):
    otp=123456
    message_handler = MessageHandler(new_phone_number,otp).sent_otp_on_phone()
    return redirect('signup_otp_validate')
    
def addaddress(request):
    if request.method == 'POST':
        user = request.user
        name = request.POST['name']
        phone = request.POST['phone']
        address = request.POST['address']
        city = request.POST['city']
        state = request.POST['state']
        pincode = request.POST['pincode']
        new_address = Address.objects.create(
            name=name, phone=phone, address=address, city=city, state=state, pincode=pincode, user=user)
        new_address.save()
        print("saved address")
        return redirect('profile')
    else:
        return render(request,'add_address.html')

def edit_user(request,id):
    if request.user.is_authenticated:
    
        newUser =  User.objects.get(id=id)
        
        if request.method=='POST':
            name= request.POST['name']
            email= request.POST['email']
            phone= request.POST['phone']

        
            newUser.first_name = name
            newUser.email = email
            newUser.phone_number = phone
            newUser.save()
            return redirect('profile')

        # return render(request,'edit_user.html',{'newUser':newUser})
    else:
        return redirect('user_login')

def changePassword(request,id):
    if request.user.is_authenticated:
        if request.method == 'POST':
            user =  User.objects.get(id=id)
            old=request.POST['old']
            new = request.POST['new']
            confirm = request.POST['confirm']
            if new != confirm:
                messages.info(request,"New Passwords aren't matching")
                return redirect('profile')
            elif not user.check_password(old):
                messages.info(request,"Wrong Old Password")
                return redirect('profile')
            else:
                user.set_password(new)
                user.save()
                messages.info(request,"Passsword changed Successfully:) Login to continue")
                
                return redirect('profile')
    return redirect('user_login')

def editAddress(request):
    if request.user.is_authenticated:
        address = Address.objects.get(id=request.user.id)
        print(address)
        print(address.name)

        if request.method == 'POST':
            user = request.user
            name = request.POST['name']
            print("name is ",name)
            phone = request.POST['phone']
            new_address = request.POST['address']
            city = request.POST['city']
            state = request.POST['state']
            pincode = request.POST['pincode']
            

            address.name=name
            address.phone=phone
            address.address=new_address
            address.city=city
            address.state=state
            address.pincode=pincode
            address.save()
            print("address edited")
            return redirect('profile')
        else:
            return render(request,'edit_address.html',{'address':address})
    return redirect('user_login')

def deleteAddress(request,id):
    address = Address.objects.get(id=id)
    address.delete()
    return redirect('profile')


# pip install reportlab==3.6.6 => since getstring io error occured

def invoice_generate(request,id):
    oldcart=OldCart.objects.get(order_id=id)

    user = request.user
    template_path = 'invoice.html'
    print(oldcart.product.price)

    context = {'oldcart': oldcart,'user': user}

    response = HttpResponse(content_type='application/pdf')

    response['Content-Disposition'] = 'filename="invoice.pdf"'

    template = get_template(template_path)

    html = template.render(context)

    # create a pdf
    pisa_status = pisa.CreatePDF(
    html, dest=response)
    # if error then show some funy view
    if pisa_status.err:
        return HttpResponse('We had some errors <pre>' + html + '</pre>')
    return response

        



    



    

