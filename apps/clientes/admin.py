from django.contrib import admin
from .models import *
# Register your models here.


class ClienteAdmin(admin.ModelAdmin):
    list_display = (
        'schema_name',
        'razon_social','ruc','plan','cantidad_usuarios','tipo_empresa',
    )    

def _register(model, admin_class):
    admin.site.register(model, admin_class)
	
	
_register(Client,ClienteAdmin)