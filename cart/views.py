from django.shortcuts import render,redirect
from django.http import JsonResponse, HttpResponse
from django.contrib import messages
from django.contrib.auth.models import User, auth
from django.contrib.auth import login,logout,authenticate,get_user_model
from django.views.decorators.cache import never_cache
from .models import *
# from guest_user.decorators import allow_guest_user
# from guest_user.models import Guest


def cart(request):
    if request.user.is_authenticated and request.user.is_active:
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
            for i in cart:
                if i.product.p_offer_price < 1 and  i.product.c_offer_price < 1:
                    x = i.product.price*i.quantity
                    subtotal = subtotal+x
                elif i.product.p_offer_price > 1 and  i.product.c_offer_price == 0:
                    x = i.product.p_offer_price*i.quantity
                    subtotal = subtotal+x
                elif i.product.p_offer_price < 1 and  i.product.c_offer_price > 1:
                    x = i.product.c_offer_price*i.quantity
                    subtotal = subtotal+x
                elif i.product.p_offer_price < i.product.c_offer_price and i.product.c_offer_price > 1:
                    x = i.product.p_offer_price*i.quantity
                    subtotal = subtotal+x
                elif i.product.c_offer_price < i.product.p_offer_price and i.product.p_offer_price > 1:
                    x = i.product.c_offer_price*i.quantity
                    subtotal = subtotal+x
                elif i.product.p_offer_price == i.product.c_offer_price and i.product.c_offer_price > 1 and i.product.p_offer_price > 1:
                    x = i.product.p_offer_price*i.quantity
                    subtotal = subtotal+x
            shipping = 0
            total = subtotal + shipping
            return render(request, 'cart.html', {'cart': cart, 'subtotal': subtotal, 'total': total})
    else:
        if not request.session.session_key:
            request.session.create()
        request.session['guest_key']=request.session.session_key
        key = request.session['guest_key']
        print(request.session.session_key)
        cart = guestCart.objects.filter(user_ref=request.session.session_key)
        subtotal = 0
        for i in cart:
            x = i.product.price*i.quantity
            subtotal = subtotal+x
        shipping = 0
        total = subtotal + shipping
        return render(request, 'cart.html', {'cart': cart, 'subtotal': subtotal, 'total': total})
        

def minus(request,id):
    if request.user.is_authenticated and request.user.is_active:
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
    else:
        cart = guestCart.objects.get(id=id)
        qty = int(cart.quantity)-1
        
        crt = guestCart.objects.filter(user_ref=request.session.session_key)
        guestCart.objects.filter(id=id).update(quantity=qty)
        subtotal = 0
        for i in crt:
            x = i.product.price*i.quantity
            subtotal = subtotal+x
        shipping = 0
        total = subtotal + shipping
        return JsonResponse({'qty': qty,'total':total,'subtotal':subtotal})


def up(request,id):
    if request.user.is_authenticated and request.user.is_active:
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
    else:
        crt = guestCart.objects.filter(user_ref=request.session.session_key)
        cart = guestCart.objects.get(id=id)
        qty = int(cart.quantity)+1
        guestCart.objects.filter(id=id).update(quantity=qty)
        subtotal = 0
        for i in crt:
            x = i.product.price*i.quantity
            subtotal = subtotal+x
        shipping = 0
        total = subtotal + shipping
        return JsonResponse({'qty': qty,'total':total,'subtotal':subtotal})


#add to cart using ajax
def addtocart(request,id):
    if request.user.is_authenticated and request.user.is_active:
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
    else:
        if not request.session.session_key:
            request.session.create()
        print("in add to cart session key = ",request.session.session_key)
        product = Products.objects.get(id=id)
        
        # uid = request.user
        if guestCart.objects.filter(product=id).exists():
            print("exists")
            cart = guestCart.objects.get(product=id,user_ref=request.session.session_key)
            cart.quantity = cart.quantity+1
            cart.save()
            return JsonResponse({'status': True})
        else:
            print("not exists")
            cart = guestCart.objects.create(product=product,user_ref=request.session.session_key)
            return JsonResponse({'status': True})


#add to cart without ajax => redirects to cart
def addTocart(request,id):
    if request.user.is_authenticated and request.user.is_active:
        product = Products.objects.get(id=id)
        uid = request.user
        if Cart.objects.filter(product=id, user=uid).exists():
            cart = Cart.objects.get(product=id, user=uid)
            cart.quantity = cart.quantity+1
            cart.save()
            return redirect('cart')
        else:
            cart = Cart.objects.create(product=product, user=uid)
            return redirect('cart')
    else:
        if not request.session.session_key:
            request.session.create()
        product = Products.objects.get(id=id)
        uid = request.user
        print(uid)
        if guestCart.objects.filter(product=id,user_ref=request.session.session_key).exists():
            cart = guestCart.objects.get(product=id, user=uid)
            cart.quantity = cart.quantity+1
            cart.save()
            return redirect('cart')
        else:
            cart = guestCart.objects.create(product=product, user_ref=request.session.session_key)
            return redirect('cart')

def removecart(request,id):
    if request.user.is_authenticated and request.user.is_active:
        cart = Cart.objects.get(id=id)
        cart.delete()
        messages.error(request,"Item removed")
        return redirect('cart')
    else:
        cart =guestCart.objects.get(id=id)
        cart.delete()
        messages.error(request,"Item removed")
        return redirect('cart')

def checkout(request):
    if request.method == 'POST' and 'address_id' in request.POST:
        address_id = request.POST['address_id']
        payment = request.POST['payment_selector']
        user= request.user
        address = Address.objects.get(id=address_id)
        cart = Cart.objects.filter(user=request.user)
        subtotal = 0
        for i in cart:
            if i.product.p_offer_price < 1 and  i.product.c_offer_price < 1:
                x = i.product.price*i.quantity
                subtotal = subtotal+x
            elif i.product.p_offer_price > 1 and  i.product.c_offer_price == 0:
                x = i.product.p_offer_price*i.quantity
                subtotal = subtotal+x
            elif i.product.p_offer_price < 1 and  i.product.c_offer_price > 1:
                x = i.product.c_offer_price*i.quantity
                subtotal = subtotal+x
            elif i.product.p_offer_price < i.product.c_offer_price and i.product.c_offer_price > 1:
                x = i.product.p_offer_price*i.quantity
                subtotal = subtotal+x
            elif i.product.c_offer_price < i.product.p_offer_price and i.product.p_offer_price > 1:
                x = i.product.c_offer_price*i.quantity
                subtotal = subtotal+x
            elif i.product.p_offer_price == i.product.c_offer_price and i.product.c_offer_price > 1 and i.product.p_offer_price > 1:
                x = i.product.p_offer_price*i.quantity
                subtotal = subtotal+x
        total = subtotal
        for i in cart:
            order = Order.objects.create(
            user=user, address=address, amount=total, method=payment)
            order.save()
            oldcart = OldCart.objects.create(user=user, quantity=i.quantity, product=i.product, order=order,total=i.quantity*i.product.price)
            oldcart.save()
            product= Products.objects.get(id=i.product_id)
            product.quantity=product.quantity-i.quantity
            product.save()
        cart.delete()
        # for i in cart:
        #     oldcart = OldCart.objects.create(
        #         user=user, quantity=i.quantity, product=i.product, order=order)
        #     oldcart.save()
        #     cart.delete()
        messages.error(request,"Order Placed")
        return redirect('profile')

    elif request.user.is_authenticated and request.user.is_active:
        user = request.user
        cart = Cart.objects.filter(user=user)
        if len(cart)!=0:
            # cart = Cart.objects.filter(user=user)

            address = Address.objects.filter(user=user)
            subtotal = 0
            for i in cart:
                if i.product.p_offer_price < 1 and  i.product.c_offer_price < 1:
                    x = i.product.price*i.quantity
                    subtotal = subtotal+x
                elif i.product.p_offer_price > 1 and  i.product.c_offer_price == 0:
                    x = i.product.p_offer_price*i.quantity
                    subtotal = subtotal+x
                elif i.product.p_offer_price < 1 and  i.product.c_offer_price > 1:
                    x = i.product.c_offer_price*i.quantity
                    subtotal = subtotal+x
                elif i.product.p_offer_price < i.product.c_offer_price and i.product.c_offer_price > 1:
                    x = i.product.p_offer_price*i.quantity
                    subtotal = subtotal+x
                elif i.product.c_offer_price < i.product.p_offer_price and i.product.p_offer_price > 1:
                    x = i.product.c_offer_price*i.quantity
                    subtotal = subtotal+x
                elif i.product.p_offer_price == i.product.c_offer_price and i.product.c_offer_price > 1 and i.product.p_offer_price > 1:
                    x = i.product.p_offer_price*i.quantity
                    subtotal = subtotal+x
            total = subtotal
            return render(request, 'checkout.html', {'subtotal': subtotal, 'total': total, 'address': address})
        messages.error(request, 'Cart is empty')
        return redirect('cart')
    else:
        return redirect('user_login')


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
    if request.user.is_authenticated:
        user=request.user
        wishlist = Wishlist.objects.filter(user=request.user)
        return render(request,'wishlist.html',{'wishlist':wishlist})
    return redirect('user_login')

def addToWishlist(request):
  if request.method == 'GET':
    prod_id = request.GET['prod_id']
    product=Products.objects.get(id=prod_id)
    user=request.user
    wishlist = Wishlist.objects.create(user=user,product=product)
    wishlist.save()
    return JsonResponse({'status': True})


# remove by clicking heart button
def removeFromWishlist(request):
  if request.method == 'GET':
    prod_id = request.GET['prod_id']
    product=Products.objects.get(id=prod_id)
    user=request.user
    wishlist = Wishlist.objects.filter(user=user,product=product)
    wishlist.delete()
    return JsonResponse({'status': True})

#remove by clicking normal button in wishlist page
def removeWishlist(request,id):
    product=Products.objects.get(id=id)
    user=request.user
    wishlist = Wishlist.objects.filter(user=user,product=product)
    wishlist.delete()
    return redirect('wishlist')

def razorpay(request):
    cart = Cart.objects.filter(user=request.user)
    subtotal = 0
    for i in cart:
        if i.product.price !=0:
            x = i.product.price*i.quantity
            subtotal = subtotal+x
    total = subtotal
    return JsonResponse({'total': total,})

def cancel_order(request,id):
    order = Order.objects.get(id=id)
    order.status = "cancelled"
    order.save()
    print(order.status)
    return redirect('profile')