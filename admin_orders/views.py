from django.shortcuts import render,redirect

def admin_orders(request):
    return render(request,'admin_orders.html')