from django.contrib import admin
from .models import *
# Register your models here.


class SupervisorAdmin(admin.ModelAdmin):
    list_display = (
        'user',
    )   

class UsuarioAdmin(admin.ModelAdmin):
    list_display = (
        'usuario','supervisor',
    )    

def _register(model, admin_class):
    admin.site.register(model, admin_class)
	
	
_register(Supervisor,SupervisorAdmin)
_register(Usuario,UsuarioAdmin)