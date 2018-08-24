from django.shortcuts import render, redirect
from .models import *
from django.contrib.auth.models import User
# Create your views here.
from django.http import JsonResponse
import json
from django.core import serializers

#from django_tenants.utils import tenant_context
from tenant_schemas.utils import *
# Libreria para acceder a la fecha actual
from datetime import *

# Create your views here.

def registrar(request):
	if request.method == "POST":
		ruc  			= request.POST.get('ruc')
		razon_social    = request.POST.get('razon_social')
		dominio 		= str(request.POST.get('url')) + ".localhost"
		schema_data    	= request.POST.get('schema_data')
		telefono    	= request.POST.get('telefono')
		email   		= request.POST.get('email')
		username    	= request.POST.get('username')
		pass1    		= request.POST.get('pass1')
		pass2    		= request.POST.get('pass2')
		# Creamos una fecha de vencimiento de aca a 1(un) mes
		today 				= datetime.now()
		fecha_vencimiento  	= date(int(today.year),int(today.month + 1),int(today.day))
		# create your public tenant
		tenant = Client(domain_url=dominio,
						schema_name=schema_data,
		                paid_until=fecha_vencimiento,
		                on_trial=True,
		                razon_social=razon_social,
		                ruc=ruc,
		                email=email,
		                telefono=telefono,
		                plan='1',
		                tipo_empresa='1',
		                cantidad_usuarios='10')
		tenant.save()

		# Add one or more domains for the tenant
		'''
		domain = Domain()
		domain.domain = dominio # don't add your port or www here!
		domain.tenant = tenant
		domain.is_primary = True
		domain.save()
		'''

		data = [tenant]
		# Creamos un superusuario dentro de su schema
		with tenant_context(tenant):
			User.objects.create_user(username=username, password=pass1, email=email, first_name=razon_social, is_staff=True)
		return JsonResponse(serializers.serialize('json', data), safe= False)

	return render(request,'web/index.html')



def buscar_url(request, url):
    search_text = url
    if search_text is not None and search_text != u"":
        search_text = url + ".localhost"
        data = Client.objects.filter(domain_url = search_text)
    else:
	    data = []
    return JsonResponse(serializers.serialize('json', data), safe= False)










