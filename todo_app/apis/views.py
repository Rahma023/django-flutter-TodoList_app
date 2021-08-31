from rest_framework import generics
from django.db.models import query
from django.shortcuts import render
from todos import models
from .serializer import TodoSerializer
# from rest_framework.views import APIView


# Create your views here.

class ListTodo(generics.ListCreateAPIView):
    queryset=models.Todo.objects.all()
    forms_class=TodoSerializer

class DetailTodo(generics.RetrieveUpdateDestroyAPIView):
    queryset=models.Todo.objects.all()
    forms_class=TodoSerializer


