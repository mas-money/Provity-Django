from django import template
from apps.clientes.models import *
from django.db import connection

register = template.Library()


def datos(request):
	cliente = Client.objects.get(schema_name=connection.schema_name)
	return {'cliente':cliente}