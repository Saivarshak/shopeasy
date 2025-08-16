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

def mens_tshirt1_detailed(request):
    return render(request, 'mens-tshirt1-detailed.html')

def mens_tshirt2_detailed(request):
    return render(request, 'mens-tshirt2-detailed.html')

def mens_tshirt3_detailed(request):
    return render(request, 'mens-tshirt3-detailed.html')

def mens_tshirt4_detailed(request):
    return render(request, 'mens-tshirt4-detailed.html')

def mens_tshirt5_detailed(request):
    return render(request, 'mens-tshirt5-detailed.html')

def mens_tshirt6_detailed(request):
    return render(request, 'mens-tshirt6-detailed.html')

def mens_tshirt7_detailed(request):
    return render(request, 'mens-tshirt7-detailed.html')

def mens_tshirt8_detailed(request):
    return render(request, 'mens-tshirt8-detailed.html')

def mens_jeans1_detailed(request):
    return render(request, 'mens-jeans1-detailed.html')

def mens_jeans2_detailed(request):
    return render(request, 'mens-jeans2-detailed.html')

def mens_jeans3_detailed(request):
    return render(request, 'mens-jeans3-detailed.html')

def mens_jeans4_detailed(request):
    return render(request, 'mens-jeans4-detailed.html')

def mens_jeans5_detailed(request):
    return render(request, 'mens-jeans5-detailed.html')

def mens_jeans6_detailed(request):
    return render(request, 'mens-jeans6-detailed.html')

def womens_ethnicware1_detailed(request):
    return render(request, 'womens-ethnicware1-detailed.html')

def womens_ethnicware2_detailed(request):
    return render(request, 'womens-ethnicware2-detailed.html')

def womens_ethnicware3_detailed(request):
    return render(request, 'womens-ethnicware3-detailed.html')

def womens_ethnicware4_detailed(request):
    return render(request, 'womens-ethnicware4-detailed.html')

def womens_ethnicware5_detailed(request):
    return render(request, 'womens-ethnicware5-detailed.html')

def womens_ethnicware6_detailed(request):
    return render(request, 'womens-ethnicware6-detailed.html')

def womens_ethnicware7_detailed(request):
    return render(request, 'womens-ethnicware7-detailed.html')

def womens_ethnicware8_detailed(request):
    return render(request, 'womens-ethnicware8-detailed.html')

def womens_westernware1_detailed(request):
    return render(request, 'womens-westernware1-detailed.html')

def womens_westernware2_detailed(request):
    return render(request, 'womens-westernware2-detailed.html')

def womens_westernware3_detailed(request):
    return render(request, 'womens-westernware3-detailed.html')

def womens_westernware4_detailed(request):
    return render(request, 'womens-westernware4-detailed.html')

def womens_westernware5_detailed(request):
    return render(request, 'womens-westernware5-detailed.html')

def womens_westernware6_detailed(request):
    return render(request, 'womens-westernware6-detailed.html')

def womens_westernware7_detailed(request):
    return render(request, 'womens-westernware7-detailed.html')

def womens_westernware8_detailed(request):
    return render(request, 'womens-westernware8-detailed.html')

def womens_footwear1_detailed(request):
    return render(request, 'womens-footwear1-detailed.html')

def womens_footwear2_detailed(request):
    return render(request, 'womens-footwear2-detailed.html')

def womens_footwear3_detailed(request):
    return render(request, 'womens-footwear3-detailed.html')

def womens_footwear4_detailed(request):
    return render(request, 'womens-footwear4-detailed.html')

def womens_footwear5_detailed(request):
    return render(request, 'womens-footwear5-detailed.html')

def womens_footwear6_detailed(request):
    return render(request, 'womens-footwear6-detailed.html')

def womens_footwear7_detailed(request):
    return render(request, 'womens-footwear7-detailed.html')

def womens_footwear8_detailed(request):
    return render(request, 'womens-footwear8-detailed.html')