from django.urls import path, include
from . import views
urlpatterns = [

    path('', views.index, name="index"),
    path('user_login', views.user_login, name="user_login"),
    path('user_signup', views.user_signup, name="user_signup"),
    path('home', views.home, name="home"),
    path('products/<int:id>/', views.products, name="products"),
    path('user_logout', views.user_logout, name="user_logout"),
    path('number_check', views.number_check, name="number_check"),
    path('otp_validate', views.otp_validate, name="otp_validate"),
    path('signup_otp_validate', views.signup_otp_validate, name="signup_otp_validate"),
    path('product_details/<int:id>', views.product_details, name="product_details"),
    # path('addaddress', views.addaddress, name="addaddress"),
    path('profile', views.profile, name="profile"),
    path('hampers', views.hampers, name="hampers"),
    path('others', views.others, name="others"),
    path('login_resend', views.login_resend, name="login_resend"),
    path('signup_resend', views.signup_resend, name="signup_resend"),
    path('login_home', views.login_home, name="login_home"),
    path('addaddress', views.addaddress, name="addaddress"),
    path('edit_user/<int:id>', views.edit_user, name="edit_user"),
    path('changePassword/<int:id>', views.changePassword, name="changePassword"),
    path('editAddress', views.editAddress, name="editAddress"),
    path('deleteAddress/<int:id>', views.deleteAddress, name="deleteAddress"),





    
]