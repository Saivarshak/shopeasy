from django.shortcuts import render
from .models import Product

def home(request):
    products = Product.objects.all()
    return render(request, 'home.html', {'products': products})

def category_men(request):
    return render(request, 'category-men.html')

def category_women(request):
    return render(request, 'category-women.html')

def category_kids(request):
    return render(request, 'category-kids.html')


def login(request):
    return render(request, 'login.html')    


def mens_tshirts(request):
    return render(request, 'mens-tshirts.html') 