from django.urls import path, include
from . import views
urlpatterns = [
    
    path('admin_orders', views.admin_orders, name="admin_orders"),
    path('salesReport', views.salesReport, name="salesReport"),
    path('orderUpdate/<int:id>', views.orderUpdate, name="orderUpdate"),
    path('date_wise', views.date_wise, name="date_wise"),
    path('yearly_sales', views.yearly_sales, name="yearly_sales"),



]