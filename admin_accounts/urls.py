from django.urls import path, include
from . import views
urlpatterns = [
    path('admin_login', views.admin_login, name="admin_login"),
    path('dashboard', views.dashboard, name="dashboard"),
    path('admin_logout', views.admin_logout, name="admin_logout"),
]