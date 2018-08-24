from django.contrib.auth.models import User
from django.db import models
from datetime import *
from django.utils import timezone

class Area(models.Model):
    nombre  =   models.CharField(max_length=200)
    array   =   models.CharField(max_length=2500)
    creado  =   models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return str(self.nombre)