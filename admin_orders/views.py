from django.shortcuts import render,redirect
from cart.models import *

def admin_orders(request):
    if request.user.is_authenticated and  request.user.is_superuser:
        # orders = Order.objects.all()
        oldcart = OldCart.objects.all()
        return render(request,'admin_orders.html',{'oldcart':oldcart})
    else: 
        return redirect('admin_login')