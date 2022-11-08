import os
from django.conf import settings
from django.http import HttpResponse
from django.shortcuts import render,redirect
from cart.models import *



def admin_orders(request):
    if request.user.is_authenticated and  request.user.is_superuser:
        # orders = Order.objects.all()
        oldcart = OldCart.objects.all()
        return render(request,'admin_orders.html',{'oldcart':oldcart})
    else: 
        return redirect('admin_login')


def orderUpdate(request,id):
    if request.user.is_superuser:
        if request.method == 'POST':
            stat=request.POST.get('status')
            oldcart=OldCart.objects.get(order_id=id)
            print(oldcart)
            oldcart.order.status=stat
            oldcart.order.save()
            return redirect('admin_orders')

def salesReport(request):
    if request.user.is_authenticated and  request.user.is_superuser:
        # orders = Order.objects.all()
        oldcart = OldCart.objects.all()
        return render(request,'sales_report.html',{'oldcart':oldcart})
    else: 
        return redirect('admin_login')



