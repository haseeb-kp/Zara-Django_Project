from django.shortcuts import render,redirect
from django.contrib import messages
from django.contrib.auth.models import User, auth
from django.contrib.auth import login,logout,authenticate,get_user_model
from django.views.decorators.cache import never_cache
from .models import *

# from django.contrib.auth import get_user_model

# User = get_user_model()


@never_cache
def admin_products(request):
    if request.user.is_authenticated and  request.user.is_superuser :
        products = Products.objects.all()
        return render(request,'admin_products.html',{'products':products})
    else: 
        return redirect('admin_login')

@never_cache
def edit_product(request,id):
    if request.user.is_superuser:
        product = Products.objects.get(id=id)
        
        if request.method=='POST':
            
            product_name= request.POST['product_name']
            category= request.POST['category']
            price= request.POST['price']
            desc= request.POST['desc']
            image= request.FILES.get('image',product.image)

            if Products.objects.filter(product_name=product_name).exists():
                messages.error(request,'Product Exists!')
                return redirect('edit_product')
            
            category=Category.objects.get(id=category)
            product.product_name = product_name
            product.category = category
            product.image = image
            product.price = price
            product.desc = desc
            product.save()
            return redirect('admin_products')

        
        category=Category.objects.all()
        return render(request,'edit_product.html',{'product':product,'category':category})
    return redirect('admin_login')

def delete_product(request,id):
    if request.user.is_superuser:
        product = Products.objects.get(id=id)
        product.delete()
        return redirect('admin_products')
    return redirect('admin_login')

def add_product(request):
    if request.user.is_superuser:
        if request.method=='GET':
            category=Category.objects.all()
            return render(request,'add_product.html',{'category':category})
        if request.method=='POST':
            product_name= request.POST['product_name']
            category= request.POST['category']
            image= request.FILES['image']
            price= request.POST['price']
            desc= request.POST['desc']

            category=Category.objects.get(id=category)
            product = Products.objects.create(product_name=product_name,desc=desc,price=price,category=category,image=image,)
            product.save()
            return redirect('admin_products')
    return redirect('admin_login')



