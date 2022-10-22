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


User = get_user_model()


def index(request):
    return redirect('home')


def user_login(request):
    if request.user.is_authenticated:
        
        return redirect('home')
    if request.method=='POST':
        username=request.POST['username']
        password=request.POST['password']
        user=auth.authenticate(username=username,password=password)
        print(user)
        if user is not None:
            print("hi")
            auth.login(request,user)
            print(user.phone_number)

            return redirect('home')
        else:
            messages.error(request,'Invalid Credentials')
            return redirect('user_login')

    return render(request,'user_login.html')



@never_cache
def user_signup(request):
    if request.method=='POST':
        name=request.POST['name']
        username=request.POST['username']
        email=request.POST['email']
        phone_number=request.POST['phone_number']
        pass1=request.POST.get('pass1')
        pass2=request.POST.get('pass2')
        if pass1==pass2:
            if User.objects.filter(email=email).exists():
                messages.error(request,'Email Is Already taken !')
                return redirect('user_signup')
            elif User.objects.filter(phone_number=phone_number).exists():
                messages.error(request,' Number is already used !')
                return redirect('user_signup')
            elif User.objects.filter(username=username).exists():
                    messages.error(request, 'Username taken')
                    return redirect('user_signup')

            else:
                
                user=User.objects.create_user(username=username,password=pass2,email=email,first_name=name,phone_number=phone_number)
                user.save()
                return redirect('user_login')
        else:
            messages.error(request, 'Password not matching')
            return redirect('signup')
        
    else:
        return render (request,'user_signup.html')    

@never_cache
def home(request):
    category = Category.objects.all()
    return render(request,'home.html',{'category':category})

@never_cache
def user_logout(request):
    if request.user.is_authenticated:
        auth.logout(request)
        return redirect('index')


def products(request,id):
    category=Category.objects.get(id=id)
    product = Products.objects.filter(category=category).all()
    return render(request,'products.html',{'product':product,'category':category})



def number_check(request):
    if request.method=='POST':
        
        global phone 
        phone=request.POST['phone_number']
        print("phone1=",phone)
        message_handler = MessageHandler(phone,otp).sent_otp_on_phone()
        return redirect('otp_validate')
    return render(request,'otp_login.html')

def otp_validate(request):
    if request.method=='POST':
        otp1= int(request.POST['otp'])
        validate = MessageHandler(phone,otp1).validate()
        print("validate=",validate)
        if validate=="approved":
            user=CustomBackend.authenticate(request,phone_number=phone)
            print("-----")
            print (user)
            
            return redirect('home')
        
    return render(request,'otp_validate.html')
    



    

