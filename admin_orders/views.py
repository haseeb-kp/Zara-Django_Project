import os
from django.conf import settings
from django.http import HttpResponse
from django.shortcuts import render,redirect
from cart.models import *
from django.core.exceptions import ValidationError
from django.contrib import messages




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
        order = Order.objects.all()
        new_order_list=[]
        for i in order:
            old = OldCart.objects.filter(order_id=i.id,user=i.user)
            for j in old:

                od={'id':i.id,'ordered_date':i.ordered_date,'user':i.user,
                    'amount':j.total,'method':i.method,'status':i.status}
                new_order_list.append(od)
        o_count = len(order)
        return render(request, 'sales_report.html',{'order':new_order_list,'o_count':o_count})
    else: 
        return redirect('admin_login')

def date_wise(request):
    start = request.POST['start_date']
    end = request.POST['end_date']
    if len(start)<1:
        messages.error(request,"choose Date")
        return redirect('salesReport')
    if len(end)<1:
        messages.error(request,"choose Date")
        return redirect('salesReport')
    
    order = Order.objects.filter(ordered_date__range=[start,end])
    
    new_order_list=[]
    for i in order:
        old = OldCart.objects.filter(order_id=i.id,user=i.user)
        for j in old:

            od={'id':i.id,'ordered_date':i.ordered_date,'user':i.user,
                'amount':j.total,'method':i.method,'status':i.status}
            new_order_list.append(od)
    o_count = len(order)
    return render(request, 'sales_report.html',{'order':new_order_list,'o_count':o_count})



def yearly_sales(request):
    month = request.POST['month']
    year = request.POST['year']
    print(month)
    if month=='all':
        print("all")
        order = Order.objects.filter(ordered_date__year=year)
        new_order_list=[]
        for i in order:
            old = OldCart.objects.filter(order_id=i.id,user=i.user)
            for j in old:

                od={'id':i.id,'ordered_date':i.ordered_date,'user':i.user,
                    'amount':j.total,'method':i.method,'status':i.status}
                new_order_list.append(od)
        o_count = len(order)
        return render(request, 'sales_report.html',{'order':new_order_list,'o_count':o_count})
    else:
        print("seperate")
        order = Order.objects.filter(ordered_date__year=year,ordered_date__month=month)
        new_order_list=[]
        for i in order:
            old = OldCart.objects.filter(order_id=i.id,user=i.user)
            for j in old:

                od={'id':i.id,'ordered_date':i.ordered_date,'user':i.user,
                    'amount':j.total,'method':i.method,'status':i.status}
                new_order_list.append(od)
        o_count = len(order)
        return render(request, 'sales_report.html',{'order':new_order_list,'o_count':o_count})



# def monthly_sales(request):
#     month = request.POST['month']
#     od = Order.objects.filter(order_date__month=month)
#     if len(od) ==0:
#         return render(request, 'salesreport.html')
#     else:

#         return render(request, 'salesreport.html',{'od':od})


