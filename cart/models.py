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
