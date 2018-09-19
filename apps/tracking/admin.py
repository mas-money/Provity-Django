from django.contrib import admin
from .models import *
# Register your models here.


class TrackAdmin(admin.ModelAdmin):
    list_display = (
        'usuario',
        'latitud','longitud','timestamp',
    )    

def _register(model, admin_class):
    admin.site.register(model, admin_class)
	
	
_register(Track,TrackAdmin)