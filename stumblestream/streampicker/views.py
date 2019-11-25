from django.shortcuts import render
from django.http import HttpResponse

def index(request):
    #return HttpResponse("Get ready for some stumbling and tumbling!")
    return render(request, 'index.html', {'name':'stumblestream!!!'})