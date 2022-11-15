from django.urls import path, include
from . import views
urlpatterns = [
    path('admin_login', views.admin_login, name="admin_login"),
    path('dashboard', views.dashboard, name="dashboard"),
    path('admin_logout', views.admin_logout, name="admin_logout"),
    path('offers', views.offers, name="offers"),
    path('coupon', views.coupon, name="coupon"),
    path('add_product_offer', views.add_product_offer, name="add_product_offer"),
    path('add_category_offer', views.add_category_offer, name="add_category_offer"),
    # path('product_offer_block', views.product_offer_block, name="product_offer_block"),
    # path('product_offer_unblock', views.product_offer_unblock, name="product_offer_unblock"),
    path('product_offer_remove/<int:id>', views.product_offer_remove, name="product_offer_remove"),
    # path('category_offer_block', views.category_offer_block, name="category_offer_block"),
    # path('category_offer_unblock', views.category_offer_unblock, name="category_offer_unblock"),
    path('category_offer_remove/<int:id>', views.category_offer_remove, name="category_offer_remove"),
    path('add_coupon', views.add_coupon, name="add_coupon"),
    path('coupon_block/<int:id>', views.coupon_block, name="coupon_block"),
    path('coupon_unblock/<int:id>', views.coupon_unblock, name="coupon_unblock"),
    path('coupon_remove/<int:id>', views.coupon_remove, name="coupon_remove"),
    path('product_offer_edit/<int:id>', views.product_offer_edit, name="product_offer_edit"),
    path('category_offer_edit/<int:id>', views.category_offer_edit, name="category_offer_edit"),
    path('edit_coupon/<int:id>', views.edit_coupon, name="edit_coupon"),


]