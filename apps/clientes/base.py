from django import template
from apps.clientes.models import *
from apps.usuarios.models import *

from tenant_schemas.utils import *
from django.db import connection


def variables(request):
	print("ENTRO EN LAS VARIABLES")
	schema = connection.schema_name
	with schema_context(str('public')):
		cliente = Client.objects.get(schema_name=schema)
	usuarios = User.objects.filter(is_active=True,is_superuser=False, is_staff=False)
	porcentaje = int(usuarios.count()*100/int(cliente.cantidad_usuarios))
	return {'cliente':cliente, 'usuarios':usuarios, 'porcentaje':porcentaje}