from django.db import models
from django.contrib.auth.models import User

# Create your models here.


class Track(models.Model):
    usuario = models.ForeignKey(User, on_delete=models.CASCADE)
    latitud = models.CharField(max_length=200, blank=True, null=True)
    longitud = models.CharField(max_length=200, blank=True, null=True)
    timestamp = models.DateTimeField(auto_now_add=True, auto_now=False)
    
    '''
    def save(self, *args, **kwargs):
            similars = Track.objects.filter(usuario=self.usuario)
            created = Track.objects.filter(usuario=self.usuario).count()
            if created != 0:
                print ('exist')
                similars.delete()
                super(Track, self).save(*args, **kwargs)
            else:
                super(Track, self).save(*args, **kwargs)
    '''