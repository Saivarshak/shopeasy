"""
URL configuration for shopease project.

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/5.2/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.urls import path
from . import views

urlpatterns = [
    path('', views.home, name='home'),
    path('category-men/', views.category_men, name='category_men'),
    path('category-women/', views.category_women, name='category_women'),
    path('category-kids/', views.category_kids, name='category_kids'),
    path('login/',views.login,name='login'),
    path('mens_tshirts/', views.mens_tshirts, name='mens_tshirts'),
    path('mens_shirts/', views.mens_shirts, name='mens_shirts'),
    path('mens_jeans/', views.mens_jeans, name='mens_jeans'),
    path('womens_ethnicware/', views.womens_ethnicware, name='womens_ethnicware'), 
    path('womens_westernware/', views.womens_westernware, name='womens_westernware'),
    path('womens_footwear/', views.womens_footwear, name='womens_footwear'),
    path('kids_tshirts/', views.kids_tshirts, name='kids_tshirts'),
    path('kids_dresses/', views.kids_dresses, name='kids_dresses'),
    path('kids_toys/', views.kids_toys, name='kids_toys'),
    path('kids_footwear/', views.kids_footwear, name='kids_footwear'),
    path('mens_shirt1_detailed/', views.mens_shirt1_detailed, name='mens_shirt1_detailed'),
    path('mens_shirt2_detailed/', views.mens_shirt2_detailed, name='mens_shirt2_detailed'), 
    path('mens_shirt3_detailed/', views.mens_shirt3_detailed, name='mens_shirt3_detailed'),
    path('mens_shirt4_detailed/', views.mens_shirt4_detailed, name='mens_shirt4_detailed'), 
    path('mens_shirt5_detailed/', views.mens_shirt5_detailed, name='mens_shirt5_detailed'), 
    path('mens_shirt6_detailed/', views.mens_shirt6_detailed, name='mens_shirt6_detailed'),
    path('mens_shirt7_detailed/', views.mens_shirt7_detailed, name='mens_shirt7_detailed'),
    path('mens_shirt8_detailed/', views.mens_shirt8_detailed, name='mens_shirt8_detailed'),
    path('mens_tshirt1_detailed/', views.mens_tshirt1_detailed, name='mens_tshirt1_detailed'),
    path('mens_tshirt2_detailed/', views.mens_tshirt2_detailed, name='mens_tshirt2_detailed'),
    path('mens_tshirt3_detailed/', views.mens_tshirt3_detailed, name='mens_tshirt3_detailed'),
    path('mens_tshirt4_detailed/', views.mens_tshirt4_detailed, name='mens_tshirt4_detailed'),
    path('mens_tshirt5_detailed/', views.mens_tshirt5_detailed, name='mens_tshirt5_detailed'),
    path('mens_tshirt6_detailed/', views.mens_tshirt6_detailed, name='mens_tshirt6_detailed'),
    path('mens_tshirt7_detailed/', views.mens_tshirt7_detailed, name='mens_tshirt7_detailed'),
    path('mens_tshirt8_detailed/', views.mens_tshirt8_detailed, name='mens_tshirt8_detailed'),
    path('mens_jeans1_detailed/', views.mens_jeans1_detailed, name='mens_jeans1_detailed'),
    path('mens_jeans2_detailed/', views.mens_jeans2_detailed, name='mens_jeans2_detailed'),
    path('mens_jeans3_detailed/', views.mens_jeans3_detailed, name='mens_jeans3_detailed'),
    path('mens_jeans4_detailed/', views.mens_jeans4_detailed, name='mens_jeans4_detailed'),
    path('mens_jeans5_detailed/', views.mens_jeans5_detailed, name='mens_jeans5_detailed'),
    path('mens_jeans6_detailed/', views.mens_jeans6_detailed, name='mens_jeans6_detailed'),
    path('mens_jeans7_detailed/', views.mens_jeans7_detailed, name='mens_jeans7_detailed'),
    path('mens_jeans8_detailed/', views.mens_jeans8_detailed, name='mens_jeans8_detailed'),
    
]

