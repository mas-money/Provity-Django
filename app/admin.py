from django import forms
from django.contrib import admin
from .models import *


# Register your models here.
class MarcacioneAdmin(admin.ModelAdmin):

    list_display = (
        'id',
        'usuario',
        'fecha',
        'hora',
        'observaciones',
		'estado',
		'zona',
    )
    search_fields = ('usuario', 'fecha', 'hora','observaciones',)
    list_filter = ('fecha','usuario',)
    ordering = ('usuario','-fecha',)
	
class UsuarioAdmin(admin.ModelAdmin):

    list_display = (
        'id',
        'usuario',
    )
    ordering = ('usuario',)
	

class ContratoAdmin(admin.ModelAdmin):
    list_display = (
        'id',
        'limite_usuarios',
        'fecha_caducidad',
        'creado',
        'modificado',
    )
class ComercioAdmin(admin.ModelAdmin):
    list_display = (
        'id',
        'nombre',
    )
class TrackAdmin(admin.ModelAdmin):
    list_display = (
        'usuario',
        'latitud',
        'longitud',
    )		
def _register(model, admin_class):
    admin.site.register(model, admin_class)
	
	
_register(Marcacione,MarcacioneAdmin)
_register(Usuario,UsuarioAdmin)
_register(Contrato ,ContratoAdmin)
_register(Comercio ,ComercioAdmin)
_register(Track ,TrackAdmin)
