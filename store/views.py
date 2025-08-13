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


def mens_shirts(request):
    return render(request, 'mens-shirts.html')


def mens_jeans(request):
    return render(request, 'mens-jeans.html')

def womens_ethnicware(request):
    return render(request, 'women-ethnicware.html')

def womens_westernware(request):
    return render(request, 'women-westernware.html')

def womens_footwear(request):
    return render(request,'women-footware.html')



def kids_tshirts(request):
    return render(request, 'kids-tshirts.html')


def kids_dresses(request):
    return render(request, 'kids-dress.html')

def kids_toys(request):
    return render(request, 'kids-toys.html')

def kids_footwear(request):
    return render(request, 'kids-footware.html')


def mens_shirt1_detailed(request):
    return render(request, 'mens-shirt1-detailed.html')


def mens_shirt2_detailed(request):
    return render(request, 'mens-shirt2-detailed.html')

def mens_shirt3_detailed(request):
    return render(request, 'mens-shirt3-detailed.html')

def mens_shirt4_detailed(request):
    return render(request, 'mens-shirt4-detailed.html')

def mens_shirt5_detailed(request):
    return render(request, 'mens-shirt5-detailed.html')

def mens_shirt6_detailed(request):
    return render(request, 'mens-shirt6-detailed.html')

def mens_shirt7_detailed(request):
    return render(request, 'mens-shirt7-detailed.html')

def mens_shirt8_detailed(request):
    return render(request, 'mens-shirt8-detailed.html')