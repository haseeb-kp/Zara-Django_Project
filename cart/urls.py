from django.urls import path, include
from . import views
urlpatterns = [
    
    path('cart', views.cart, name="cart"),
    path('up/<int:id>', views.up, name="up"),
    path('minus/<int:id>', views.minus, name="minus"),
    path('addtocart/<int:id>', views.addtocart, name="addtocart"),
    path('addTocart/<int:id>', views.addTocart, name="addTocart"),
    path('removecart/<int:id>', views.removecart, name="removecart"),
    path('addaddress', views.addaddress, name="addaddress"),
    path('checkout', views.checkout, name="checkout"),
    path('wishlist', views.wishlist, name="wishlist"),
    path('addToWishlist', views.addToWishlist, name="addToWishlist"),
    path('removeFromWishlist', views.removeFromWishlist, name="removeFromWishlist"),
    path('removeWishlist/<int:id>', views.removeWishlist, name="removeWishlist"),
    path('order', views.order, name="order"),
    path('razorpay', views.razorpay, name="razorpay"),
    path('cancel_order/<int:id>', views.cancel_order, name="cancel_order"),



]


    