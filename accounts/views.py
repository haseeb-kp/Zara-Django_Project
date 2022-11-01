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
        if user is not None:
            print("hi")
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
    category = Category.objects.get(category_name="Hampers")
    product = Products.objects.filter(category=category).all()
    return render(request,'products.html',{'product':product,'category':category})

def others(request):
    category = Category.objects.get(category_name="Others")
    product = Products.objects.filter(category = category).all()
    return render(request,'products.html',{'product':product,'category':category})

    

@never_cache
def user_logout(request):
    if request.user.is_authenticated:
        auth.logout(request)
        messages.error(request, 'logged out')
        return redirect('index')


def products(request,id):
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
    return render(request, "products.html", {"product":product,'category':category, 'page_obj':product, 'is_paginated':True, 'paginator':product_paginator})


    



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
        return render(request,'profile.html',{'address':address})
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
        



    



    

