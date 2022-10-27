from django.urls import path, include
from . import views
urlpatterns = [
    
    path('cart', views.cart, name="cart"),
    path('up/<int:id>', views.up, name="up"),
    path('minus/<int:id>', views.minus, name="minus"),
    path('addtocart/<int:id>', views.addtocart, name="addtocart"),
    path('removecart/<int:id>', views.removecart, name="removecart"),
    path('addaddress', views.addaddress, name="addaddress"),
    path('checkout', views.checkout, name="checkout"),


]