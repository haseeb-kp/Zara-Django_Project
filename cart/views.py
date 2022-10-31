from django.shortcuts import render,redirect
from django.http import JsonResponse, HttpResponse
from django.contrib import messages
from django.contrib.auth.models import User, auth
from django.contrib.auth import login,logout,authenticate,get_user_model
from django.views.decorators.cache import never_cache
from .models import *


def cart(request):
    if request.user.is_authenticated:
        user = request.user
        cart = Cart.objects.filter(user=user)

        for i in cart:

            if i.quantity <= 0:
                i.delete()
        if len(cart) == 0:
            empty = "Cart is Empty"
            return render(request, 'cart.html', {'empty': empty})
        else:
            subtotal = 0
            for i in crt:
                x = i.product.price*i.quantity
                subtotal = subtotal+x
            shipping = 0
            total = subtotal + shipping
            return render(request, 'cart.html', {'cart': cart, 'subtotal': subtotal, 'total': total})
    else:
        return redirect('user_login')

def minus(request,id):
    cart = Cart.objects.get(id=id)
    qty = int(cart.quantity)-1
    
    crt = Cart.objects.filter(user=request.user)
    Cart.objects.filter(id=id).update(quantity=qty)
    subtotal = 0
    for i in crt:
        x = i.product.price*i.quantity
        subtotal = subtotal+x
    shipping = 0
    total = subtotal + shipping
    return JsonResponse({'qty': qty,'total':total,'subtotal':subtotal})

def up(request,id):
    crt = Cart.objects.filter(user=request.user)
    cart = Cart.objects.get(id=id)
    qty = int(cart.quantity)+1
    Cart.objects.filter(id=id).update(quantity=qty)
    subtotal = 0
    for i in crt:
        x = i.product.price*i.quantity
        subtotal = subtotal+x
    shipping = 0
    total = subtotal + shipping
    return JsonResponse({'qty': qty,'total':total,'subtotal':subtotal})

def addtocart(request,id):
    if request.user.is_authenticated:
        product = Products.objects.get(id=id)
        
        uid = request.user
        if Cart.objects.filter(product=id, user=uid).exists():
            cart = Cart.objects.get(product=id, user=uid)
            cart.quantity = cart.quantity+1
            cart.save()
            return JsonResponse({'status': True})
        else:
            cart = Cart.objects.create(product=product, user=uid)
            return JsonResponse({'status': True})
    return redirect('user_login')

def removecart(request,id):
    print(id)
    cart = Cart.objects.get(id=id)
    cart.delete()
    return redirect('cart')

def checkout(request):
    if request.method == 'POST' and 'address_id' in request.POST :
        address_id = request.POST['address_id']
        address = Address.objects.get(id=address_id)
        cart = Cart.objects.filter(user=request.user)
        subtotal = 0
        for i in cart:
            if i.product.price !=0:
                x = i.product.price*i.quantity
                subtotal = subtotal+x
            else:
                x = i.product.price*i.quantity
                subtotal = subtotal+x
        shipping = 0
        total = subtotal+shipping
        return render(request, 'placed.html', {'subtotal': subtotal, 'total': total, 'address': address,'cart':cart})

    else:
        user = request.user
        print(user)
        cart = Cart.objects.filter(user=user)

        address = Address.objects.filter(user=user)
        subtotal = 0
        for i in cart:
            if i.product.price !=0:
                x = i.product.price*i.quantity
                subtotal = subtotal+x
            else:
                x = i.product.price*i.quantity
                subtotal = subtotal+x
        total = subtotal
        return render(request, 'checkout.html', {'subtotal': subtotal, 'total': total, 'address': address})

def addaddress(request):
    if request.method == 'POST':
        print("form post method")
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
        return redirect('checkout')
    else:
        return render(request,'add_address.html')

def order(request):
    return render(request,'placed.html')

def wishlist(request):
    return render(request,'wishlist.html')