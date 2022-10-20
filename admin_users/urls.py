from django.urls import path, include
from . import views
urlpatterns = [
    
    path('admin_users', views.admin_users, name="admin_users"),
    path('admin_logout', views.admin_logout, name="admin_logout"),
    path('block_user/<int:id>/', views.block_user, name="block_user"),
    path('unblock_user/<int:id>/', views.unblock_user, name="unblock_user"),
]