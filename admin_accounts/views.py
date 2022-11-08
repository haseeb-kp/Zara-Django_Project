from django.shortcuts import render,redirect
from django.contrib import messages
from django.contrib.auth.models import User, auth
from django.contrib.auth import login,logout,authenticate,get_user_model
from django.views.decorators.cache import never_cache
# from .models import CustomUser
from django.contrib.auth import get_user_model
from cart.models import *
from admin_products.models import *


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



