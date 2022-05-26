from django.contrib.auth.models import AbstractUser
from django.db import models

# User Model 생성
class User(AbstractUser):

    avatar = models.ImageField(upload_to="avatars", blank=True, null=True)
    superhost = models.BooleanField(default=False)