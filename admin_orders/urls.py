from django.urls import path, include
from . import views
urlpatterns = [
    
    path('admin_orders', views.admin_orders, name="admin_orders"),
    path('salesReport', views.salesReport, name="salesReport"),
    path('orderUpdate/<int:id>', views.orderUpdate, name="orderUpdate"),

]