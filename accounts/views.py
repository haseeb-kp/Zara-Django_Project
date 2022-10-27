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
def user_signup(request) :
    if request.method=='POST':
        global new_name
        global new_username
        global new_email
        global new_phone_number
        global new_pass2

        new_name=request.POST['name']
        new_username=request.POST['username']
        new_email=request.POST['email']
        new_phone_number=request.POST['phone_number']
        new_pass1=request.POST.get('pass1')
        new_pass2=request.POST.get('pass2')
        
        if new_pass1==new_pass2:
            if User.objects.filter(email=new_email).exists():
                messages.error(request,'Email Is Already taken !')
                return redirect('user_signup')
            elif User.objects.filter(phone_number=new_phone_number).exists():
                messages.error(request,' Number is already used !')
                return redirect('user_signup')
            elif User.objects.filter(username=new_username).exists():
                    messages.error(request, 'Username taken')
                    return redirect('user_signup')

            else:
                
                otp=123456
                message_handler = MessageHandler(new_phone_number,otp).sent_otp_on_phone()
                return render(request,'signup_otp_validate.html')        
        else:
            messages.error(request, 'Password not matching')
            return redirect('user_signup')
        
    else:
        return render (request,'user_signup.html')

def signup_otp_validate(request):
    if request.method=='POST':
        otp1= int(request.POST['otp'])
        validate = MessageHandler(new_phone_number,otp1).validate()
        print("new=",new_phone_number)
        print("validate=",validate)
        if validate=="approved":
            user=User.objects.create_user(username=new_username,password=new_pass2,email=new_email,first_name=new_name,phone_number=new_phone_number)
            user.save()
            return redirect('user_login')  
    return render(request,'signup_otp_validate.html')

@never_cache
def home(request):
    x = ["Hampers","Others"]
    category = Category.objects.exclude(category_name__in = x)
    return render(request,'home.html',{'category':category})

def hampers(request):
    category = Category.objects.get(category_name="Hampers")
    product = Products.objects.filter(category=category).all()
    return render(request,'products.html',{'product':product,'category':category})

def others(request):
    category = Category.objects.get(category_name="Others")
    product = Products.objects.filter(category = category).all()
    return render(request,'products.html',{'product':product,'category':category})

    

@never_cache
def user_logout(request):
    if request.user.is_authenticated:
        auth.logout(request)
        return redirect('index')


def products(request,id):
    category=Category.objects.get(id=id)
    print("category",category)
    product = Products.objects.filter(category=category).all()
    return render(request,'products.html',{'product':product,'category':category})



def number_check(request):
    if request.method=='POST':
        
        global phone 
        phone=request.POST['phone_number']
        print("phone1=",phone)
        otp=123456
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


def product_details(request,id):
    product = Products.objects.get(id=id)
    print(product)

    return render(request,'product_details.html',{'product':product})

def profile(request):
    if request.user.is_authenticated:
        return render(request,'profile.html')
    return redirect('user_login')
    
        



    



    

