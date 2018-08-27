from django.contrib.auth.models import User
from django.db import models
from datetime import *
from django.utils import timezone

# Create your models here.
ENTRADA_SALIDA =(("0", "Entrada"),("1", "Salida"))

class Marcaciones(models.Model):
    usuario         = models.ForeignKey(User, on_delete=models.CASCADE)
    estado          = models.CharField(max_length=40, choices=ENTRADA_SALIDA, blank=True, null=True)
    latitud         = models.CharField(max_length=200, blank=True, null=True)
    longitud        = models.CharField(max_length=200, blank=True, null=True)
    fecha           = models.DateField(null=True, blank=True)
    hora            = models.CharField(max_length=100,null=True, blank=True)
    observaciones   = models.CharField(max_length=300, null=True, blank=True)
    device_id       = models.CharField(max_length=200, null=True, blank=True)
    timestamp       = models.DateTimeField(auto_now_add=True, auto_now=False)
	
    def __str__(self):
        return str(self.usuario)
    '''
    def save(self, *args, **kwargs):
        v_fecha = str(self.fecha)
        self.fecha = datetime.strptime(v_fecha,"%d/%m/%Y")
        super(Marcacione, self).save(*args, **kwargs)
    '''
    def save(self, *args, **kwargs):
        print("Chequeamos si es salida o entrada")
        print(self)
        if self.usuario:
            marcacion_previa = Marcaciones.objects.filter(usuario=self.usuario).latest('id')
            print(marcacion_previa)
            if(marcacion_previa.estado == '0'):
                self.estado = '1'
            else:
                self.estado = '0'
        super(Marcaciones, self).save(*args, **kwargs)

class Rondas(models.Model):
    usuario         = models.ForeignKey(User, on_delete=models.CASCADE)
    latitud         = models.CharField(max_length=200, blank=True, null=True)
    longitud        = models.CharField(max_length=200, blank=True, null=True)
    fecha           = models.DateField(null=True, blank=True)
    hora            = models.CharField(max_length=100,null=True, blank=True)
    observaciones   = models.CharField(max_length=300, null=True, blank=True)
    device_id       = models.CharField(max_length=200, null=True, blank=True)
    timestamp       = models.DateTimeField(auto_now_add=True, auto_now=False)
	
    def __str__(self):
        return str(self.usuario)