from rest_framework import serializers
from rest_framework.serializers import ModelSerializer
from django.contrib import admin
from django.contrib.auth.models import User
import rest_framework.serializers
# Importamos los diferentes modelos
from apps.areas.models import *
from apps.marcaciones.models import *
from apps.tracking.models import *
from apps.usuarios.models import *
from apps.reportes.models import *



class MarcacioneSerializer(ModelSerializer):
    class Meta:
        model = Marcaciones
        fields = ('usuario','latitud','longitud','fecha','hora','observaciones','estado','device_id',)
        
class UltimaMarcacionSerializer(ModelSerializer):
    class Meta:
        model = Marcaciones
        fields = ('usuario','estado','timestamp','fecha','hora')

class UserSerializer(ModelSerializer):
    class Meta:
        model = User
        fields = ('first_name','last_name')
        
class TrackSerializer(ModelSerializer):
    user = UserSerializer(source='usuario', required=False, read_only= True)
    class Meta:
        model = Track
        fields = ('id','usuario','user','latitud','longitud','timestamp')
 
class UsuarioSerializer(serializers.ModelSerializer):
    class Meta:
        model = Usuario
        fields = ('id','avatar','comercios')
 
class ComerciosSerializer(serializers.ModelSerializer):
    class Meta:
        model = Area
        fields = ('id','nombre','array')
 
class ReporteSerializer(serializers.ModelSerializer):
    class Meta:
        model = Reporte
        fields = ('usuario','texto','timestamp')









