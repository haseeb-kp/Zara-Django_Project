
from django.urls import path, include
from . import views
urlpatterns = [
    
    path('category', views.category, name="category"),
    path('edit_category/<int:id>/',views.edit_category, name="edit_category"),
    path('delete_category/<int:id>/',views.delete_category, name="delete_category"),
    path('add_category', views.add_category, name="add_category"),
    
]