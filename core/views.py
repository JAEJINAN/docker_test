from django.shortcuts import render
from users.models import User
from django.core import serializers
import json
from rest_framework.response import Response
from rest_framework.decorators import api_view
# Create your views here.

@api_view(["GET", "POST"])
def list_user(request) :
    data = serializers.serialize('json', User.objects.all())
    response = Response(data)
    return response
