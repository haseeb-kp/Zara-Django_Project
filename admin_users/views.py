from django.shortcuts import render,redirect
from django.contrib import messages
from django.contrib.auth.models import User, auth
from django.contrib.auth import login,logout,authenticate,get_user_model
from django.views.decorators.cache import never_cache
# from .models import CustomUser
from django.contrib.auth import get_user_model

User = get_user_model()


@never_cache
def admin_users(request):
    if request.user.is_authenticated and  request.user.is_superuser :
        user_list = User.objects.exclude(username='admin')
        return render(request,'admin_users.html',{'user_list':user_list})
    else: 
        return redirect('admin_login')

def admin_logout(request):
    if request.user.is_superuser:
        logout(request)
    return redirect('admin_login')

def block_user(request,id):
    if request.user.is_superuser:
        user=User.objects.get(id=id)
        user.is_active=False
        user.save()
        return redirect('admin_users')

    return redirect('admin_login')

def unblock_user(request,id):
    if request.user.is_superuser:
        user=User.objects.get(id=id)
        user.is_active=True
        user.save()
        return redirect('admin_users')
    return redirect('admin_login')