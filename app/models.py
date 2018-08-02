from django.contrib.auth.models import User
from django.db import models
from datetime import *
from django.utils import timezone

SEXO =(("Masculino", "Masculino"),("Femenino", "Femenino"))
ENTRADA_SALIDA =(("0", "Entrada"),("1", "Salida"))

class Comercio(models.Model):
    nombre  =   models.CharField(max_length=200)
    array   =   models.CharField(max_length=2000)
    creado  =   models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return str(self.nombre)
        
class Usuario(models.Model):
    usuario = models.ForeignKey(User, on_delete=models.CASCADE)
    telefono_id = models.CharField(max_length=40, blank=True, null=True)
    sexo = models.CharField(max_length=40, choices=SEXO, blank=True, null=True)
    legajo = models.CharField(max_length=40, blank=True, null=True)
    comercios = models.ManyToManyField(Comercio)
    	
    def __str__(self):
        return str(self.usuario)

class Marcacione(models.Model):
    usuario = models.ForeignKey(User, on_delete=models.CASCADE)
    lugar = models.CharField(max_length=200)
    estado = models.CharField(max_length=40, choices=ENTRADA_SALIDA, blank=True, null=True)
    latitud = models.CharField(max_length=200, blank=True, null=True)
    longitud = models.CharField(max_length=200, blank=True, null=True)
    fecha = models.DateField(null=True, blank=True)
    hora = models.CharField(max_length=100,null=True, blank=True)
    observaciones = models.CharField(max_length=150, null=True, blank=True)
    device_id = models.CharField(max_length=200, null=True, blank=True)
    zona = models.CharField(max_length=200, null=True, blank=True)
    timestamp = models.DateTimeField(auto_now_add=True, auto_now=False)
	
    def __str__(self):
        return str(self.usuario)
    
    def save(self, *args, **kwargs):
        v_fecha = str(self.fecha)
        self.fecha = datetime.strptime(v_fecha,"%d/%m/%Y")
        super(Marcacione, self).save(*args, **kwargs)
    


class Track(models.Model):
    usuario = models.ForeignKey(User, on_delete=models.CASCADE)
    latitud = models.CharField(max_length=200, blank=True, null=True)
    longitud = models.CharField(max_length=200, blank=True, null=True)
    timestamp = models.DateTimeField(auto_now_add=True, auto_now=False)

    def save(self, *args, **kwargs):
            similars = Track.objects.filter(usuario=self.usuario)
            created = Track.objects.filter(usuario=self.usuario).count()
            if created != 0:
                print ('exist')
                similars.delete()
                super(Track, self).save(*args, **kwargs)
            else:
                super(Track, self).save(*args, **kwargs)


class Contrato(models.Model):
    limite_usuarios = models.IntegerField(default=0) 
    fecha_caducidad = models.DateField(null=True, blank=True)
    creado = models.DateTimeField(editable=False)
    modificado = models.DateTimeField(editable=False)
    
    
    def save(self, *args, **kwargs):
        ''' On save, update timestamps '''
        if not self.id:
            self.creado = timezone.now()
        self.modificado = timezone.now()
        return super(Contrato, self).save(*args, **kwargs)


