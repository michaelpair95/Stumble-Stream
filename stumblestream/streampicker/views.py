from django.shortcuts import render
from django.http import HttpResponse

def index(request):
    return HttpResponse("Stumblestream bby")
    #return render(requst, 'index.html', {'name':'stumblestream!!!'})