from django.shortcuts import render
from django.http import HttpResponse

def home(request):
    #return HttpResponse("Get ready for some stumbling and tumbling!")
    return render(request, 'streampicker/home.html', {'title':'stumblestream!!!'})