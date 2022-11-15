from django.db import models
from django.contrib.auth import get_user_model
from admin_products.models import *

User=get_user_model()
# Create your models here.

class Cart(models.Model):
    quantity = models.IntegerField(default=1)
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    product = models.ForeignKey(Products, on_delete=models.CASCADE)
    cancel = models.BooleanField(default=False)

    def __str__(self):
        return self.product.product_name

class Address(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    name = models.CharField(max_length=100)
    phone = models.CharField(max_length=100)
    address = models.TextField()
    city = models.CharField(max_length=100)
    state = models.CharField(max_length=100)
    pincode = models.IntegerField()

class Order(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    address = models.ForeignKey(Address, on_delete=models.CASCADE)
    ordered_date = models.DateTimeField(auto_now_add=True)
    status = models.CharField(max_length=100, default='Confirmed')
    amount = models.FloatField(default=1)
    method = models.CharField(max_length=100, default='Cash On Delivery')



class OldCart(models.Model):
    quantity = models.IntegerField(default=1)
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    product = models.ForeignKey(Products, on_delete=models.CASCADE)
    cancel = models.BooleanField(default=False)
    order = models.ForeignKey(Order, on_delete=models.CASCADE, default=0)
    total = models.IntegerField(default=1)

class Wishlist(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    product = models.ForeignKey(Products, on_delete=models.CASCADE)
    is_wishlist=models.BooleanField(default=True)

class guestCart(models.Model):
    quantity = models.IntegerField(default=1)
    product = models.ForeignKey(Products, on_delete=models.CASCADE)
    user_ref = models.CharField(max_length=200,null=True,blank=True)

    def __str__(self):
        return self.product.product_name

class productOffer(models.Model):
    product = models.ForeignKey(Products, on_delete=models.CASCADE, null=True, blank=True)
    offer = models.IntegerField()
    start_date = models.DateField()
    end_date = models.DateField()
    is_active = models.BooleanField(default=True)

class categoryOffer(models.Model):
    category = models.ForeignKey(Category, on_delete=models.CASCADE, null=True, blank=True)
    offer = models.IntegerField()
    start_date = models.DateField()
    end_date = models.DateField()
    is_active = models.BooleanField(default=True)

class Coupon(models.Model):
    code = models.CharField(max_length=50)
    discount_amount = models.IntegerField()
    start_date = models.DateField()
    min_amount = models.IntegerField(default=0)
    end_date = models.DateField()
    is_active = models.BooleanField(default=True)

    def __str__(self):
        return self.code
