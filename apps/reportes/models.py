from django.db import models
from django.contrib.auth.models import User

# Create your models here.


class Reporte(models.Model):
    usuario 	= models.ForeignKey(User, on_delete=models.CASCADE)
    texto 		= models.TextField(blank=False)
    timestamp 	= models.DateTimeField(auto_now_add=True, auto_now=False)