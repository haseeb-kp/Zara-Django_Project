from django.shortcuts import render,redirect
from django.contrib import messages
from django.contrib.auth.models import User, auth
from django.contrib.auth import login,logout,authenticate,get_user_model
from django.views.decorators.cache import never_cache
# from .models import CustomUser
from django.contrib.auth import get_user_model
from cart.models import *
from admin_products.models import *
import math


User = get_user_model()

@never_cache
def admin_login (request):
    if request.user.is_authenticated and  request.user.is_superuser:
        return redirect('dashboard')
    if request.method=='GET':
        return render(request,'admin_login.html')
    if request.method == 'POST':            
        username =request.POST['s_username']
        password =request.POST['s_password']
        user=auth.authenticate(username=username,password=password)
        
        if user is not None and user.is_superuser:
            login(request, user)
            return redirect('dashboard')   
        else:
            messages.error(request, 'Wrong credentials!!!')
            return redirect('admin_login')

@never_cache
def dashboard(request):
    if request.user.is_authenticated and  request.user.is_superuser:
        cart = OldCart.objects.all()
        order_count=0
        revenue = 0
        
        for i in cart:
            order_count=order_count+1
            revenue = revenue+ i.total
        product = Products.objects.all()
        product_count =0
        for i in product:
            product_count = product_count+1
        user_list=User.objects.exclude(username='admin')
        user_count=0
        for i in user_list:
            user_count=user_count+1
        return render(request,'admin_dashboard.html',
        {'revenue':revenue,'order_count':order_count,'product':product,'cart':cart,
        'product_count':product_count,'user_count':user_count})
    else: 
        return redirect('admin_login')

def admin_logout(request):
    if request.user.is_authenticated and  request.user.is_superuser:
        logout(request)
    return redirect('admin_login')

def offers(request):
    product_offers = productOffer.objects.all()
    category_offers = categoryOffer.objects.all()
    products = Products.objects.all()
    category = Category.objects.all()
    return render(request,"offer.html",{'products':products,'category':category,
        'product_offers':product_offers,'category_offers':category_offers})



def add_product_offer(request):
    if request.method=='POST':
        p_id=request.POST['product']
        start=request.POST['start']
        end=request.POST['end']
        offer=request.POST['offer']

        product = Products.objects.get(id=p_id)
        new_offer = productOffer.objects.create(
            product=product,start_date=start,end_date=end,offer=offer
        )

        product.p_offer=offer
        product.p_offer_price= math.floor(product.price-(product.price*(int(offer)/100)))
        product.save()
        return redirect('offers')
        
def add_category_offer(request):
    if request.method=='POST':
        c_id=request.POST['category']
        start=request.POST['start']
        end=request.POST['end']
        offer=request.POST['offer']
        print(c_id,start,end,offer)

        category = Category.objects.get(id=c_id)
        new_offer = categoryOffer.objects.create(
            category=category,start_date=start,end_date=end,offer=offer
        )
        category.offer=offer
        category.save()
        products = Products.objects.filter(category_id=category)
        for i in products:
            i.c_offer=offer
            i.c_offer_price=math.floor(i.price-(i.price*(int(offer)/100)))
            i.save()
        return redirect('offers')

def product_offer_block(request):
    pass

def product_offer_unblock(request):
    pass

def product_offer_remove(request,id):
    offer=productOffer.objects.get(id=id)
    p_id=offer.product.id
    product=Products.objects.get(id=p_id)
    product.p_offer= 0
    product.p_offer_price= 0
    product.save()
    offer.delete()
    return redirect('offers')

def category_offer_block(request):
    pass

def category_offer_unblock(request):
    pass

def category_offer_remove(request,id):
    offer=categoryOffer.objects.get(id=id)
    c_id=offer.category.id
    category=Category.objects.get(id=c_id)
    category.offer= 0
    category.save()
    products = Products.objects.filter(category_id=category)
    for i in products:
        i.c_offer=0
        i.c_offer_price=0
        i.save()
    
    offer.delete()
    return redirect('offers')

def coupon(request):
    coupons=Coupon.objects.all()
    return render(request,"coupon.html",{'coupons':coupons})

def add_coupon(request):
    
    if request.method == 'POST':
        code = request.POST['code']
        start_date = request.POST['start']
        end_date = request.POST['end']
        min_amount=request.POST['min']
        dis_amount=request.POST['dis']


        coupon = Coupon.objects.create(code=code,start_date=start_date,
            end_date=end_date,min_amount=min_amount,discount_amount=dis_amount)
        coupon.save()
        return redirect('coupon')

def coupon_block(request,id):
    coupon=Coupon.objects.get(id=id)
    coupon.is_active=False
    coupon.save()
    return redirect('coupon')

def coupon_unblock(request,id):
    coupon=Coupon.objects.get(id=id)
    coupon.is_active=True
    coupon.save()
    return redirect('coupon')

def coupon_remove(request,id):
    coupon=Coupon.objects.get(id=id)
    coupon.delete()
    return redirect('coupon')

