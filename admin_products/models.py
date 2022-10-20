from django.db import models

class Category(models.Model):
    
    category_name=models.CharField(max_length=50)
    image= models.ImageField(upload_to="images",default="")

    def __str__(self):
        return self.category_name

class Products(models.Model):
    
    product_name=models.CharField(max_length=200)
    category=models.ForeignKey(Category,on_delete=models.CASCADE)
    price=models.IntegerField(default=0)
    desc=models.CharField(max_length=300)
    image= models.ImageField(upload_to="images",default="")

    def __str__(self):
        return self.product_name