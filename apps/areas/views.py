from django.shortcuts import render, redirect
from .models import *
from .forms import *
from django.contrib.auth.decorators import login_required, user_passes_test, permission_required
from django.views.decorators.csrf import csrf_protect, ensure_csrf_cookie,csrf_exempt,requires_csrf_token

# Create your views here.

# CREATE
@login_required(None,'login','/login/')
def add_area(request):
    if request.method == "POST":
        nombre_area =   request.POST.get('nombre')
        coordenadas =   request.POST.get('array')
        print(coordenadas)
        nueva_area = Area.objects.create(nombre=nombre_area,array=coordenadas)
        return redirect('/areas/listado/')
    return render(request,'comercios/add.html')


# READ
@login_required(None,'login','/login/')
def listado_areas(request):
    areas = Area.objects.all()
    return render(request,'comercios/listado.html',{'comercios':areas})


# UPDATE
@login_required(None,'login','/login/') 
def editar_area(request,area):
    if request.method == "POST":
        nombre_area =   request.POST.get('nombre')
        coordenadas =   request.POST.get('array')
        print("Coordenadas : "+str(coordenadas))
        if(coordenadas != ''):
            nuevo_personal = Area.objects.filter(id=area).update(nombre=nombre_area,array=coordenadas)
        else:
            nuevo_personal = Area.objects.filter(id=area).update(nombre=nombre_area)
        return redirect('/areas/listado/')
    else:
        user_repositor = Area.objects.get(id=area)
        form = EditarComercioForm(instance=user_repositor)

    area = Area.objects.get(id=area)
    return render(request, 'comercios/editar.html',{'form':form,'comercio':area})


#DELETE
@login_required(None,'login','/login/') 
def eliminar_area(request,area):
    print(area)
    if area != '':
        Area.objects.get(id=area).delete()
    return redirect('/areas/listado/')




