from django.shortcuts import render
from django.http import HttpResponse

def index(request):
    return HttpResponse("Hello! Stumblesteam is in the works and coming soon!!!")