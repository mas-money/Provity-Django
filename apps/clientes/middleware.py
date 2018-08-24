from django import template
from django.shortcuts import redirect
from django.db import connection
from django.urls import reverse

from apps.clientes.models import *
from apps.usuarios.models import *

from tenant_schemas.utils import *
from django.db import connection

class tipo_empresa:
    """Profile completion middleware.
    Ensure every user that is interacting with the platform
    have choosed their company type.
    """

    def __init__(self, get_response):
        """Middleware initialization."""
        self.get_response = get_response

    def __call__(self, request):
        """Code to be executed for each request before the view is called."""
        schema = connection.schema_name
        with schema_context(str('public')):
            empresa = Client.objects.get(schema_name=schema)
        if not request.user.is_anonymous:
                if empresa.tipo_empresa == '':
                    if request.path not in [reverse('tipo_empresa'), reverse('logout')]:
                        return redirect('/tipo_empresa')

        response = self.get_response(request)
        return response

class fecha_vencimiento:
    """Profile completion middleware.
    Ensure every user that is interacting with the platform
    have choosed their company type.
    """

    def __init__(self, get_response):
        """Middleware initialization."""
        self.get_response = get_response

    def __call__(self, request):
        #Verificamos que el Usuario que logro ingresar a la plataforma pueda recibir el mensaje de su falta de pago.
        schema = connection.schema_name
        with schema_context(str('public')):
            empresa = Client.objects.get(schema_name=schema)
        hoy = date.today()
        print(request.user)
        if not request.user.is_anonymous:
            if empresa.paid_until <= hoy:
                if request.path not in [reverse('login'), reverse('logout'), reverse('caducado')]:
        	        return redirect('/caducado')
        else: 
            if request.path not in [reverse('login')]:
                return redirect('/login')

        response = self.get_response(request)
        return response













