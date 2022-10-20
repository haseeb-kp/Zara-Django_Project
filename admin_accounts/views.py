from django.shortcuts import render,redirect
from django.contrib import messages
from django.contrib.auth.models import User, auth
from django.contrib.auth import login,logout,authenticate,get_user_model
from django.views.decorators.cache import never_cache
# from .models import CustomUser
from django.contrib.auth import get_user_model

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
        return render(request,'admin_dashboard.html')
    else: 
        return redirect('admin_login')

def admin_logout(request):
    if request.user.is_authenticated and  request.user.is_superuser:
        logout(request)
    return redirect('admin_login')


