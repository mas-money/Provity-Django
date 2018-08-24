from django.contrib.auth.models import User
from django.db import models
from datetime import *
from django.utils import timezone

from apps.areas.models import *

SEXO =(("Masculino", "Masculino"),("Femenino", "Femenino"))


class Usuario(models.Model):
    usuario = models.ForeignKey(User, on_delete=models.CASCADE)
    telefono_id = models.CharField(max_length=40, blank=True, null=True)
    sexo = models.CharField(max_length=40, choices=SEXO, blank=True, null=True)
    ci = models.CharField(max_length=40, blank=True, null=True)
    comercios = models.ManyToManyField(Area)
    avatar = models.ImageField(default='', blank=True, null=True)
    	
    def __str__(self):
        return str(self.usuario)