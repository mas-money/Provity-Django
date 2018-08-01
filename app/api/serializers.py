from rest_framework import serializers
from rest_framework.serializers import ModelSerializer
from django.contrib import admin
from django.contrib.auth.models import User
from ..models import *
import rest_framework.serializers



class MarcacioneSerializer(ModelSerializer):
    class Meta:
        model = Marcacione
        fields = ('usuario','lugar','latitud','longitud','fecha','hora','observaciones','estado','device_id','zona')
        
class UltimaMarcacionSerializer(ModelSerializer):
    class Meta:
        model = Marcacione
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
        fields = ('id','comercios')
 
class ComerciosSerializer(serializers.ModelSerializer):
    class Meta:
        model = Comercio
        fields = ('id','nombre','array')
