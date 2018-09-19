from django.shortcuts import render, redirect
from .models import *
from .forms import *
from apps.clientes.models import *
from apps.areas.models import *
from apps.tracking.models import *
from apps.marcaciones.models import *
#from .forms import *
from django.contrib.auth.models import User
from django.contrib.auth import authenticate, login
from django.contrib.auth.views import logout
from django.contrib.auth.decorators import login_required, user_passes_test, permission_required
from django.views.decorators.csrf import csrf_protect, ensure_csrf_cookie,csrf_exempt,requires_csrf_token

#from django_tenants.utils import tenant_context
from tenant_schemas.utils import *
from django.db import connection
from django.db.models import Count, F

@csrf_protect
@ensure_csrf_cookie	
def login_view(request):
    state = ""
    print("Usuario 23: " + str(request.user))
    empresa = Client.objects.get(schema_name=connection.schema_name)
    if request.method == "POST":
        username = request.POST.get("username")
        password = request.POST.get("password")
        with tenant_context(empresa):
            user = authenticate(username=username, password=password)
        if user is not None:
            if user.is_staff:
                print(user)
                login(request, user)
                return redirect('/')
            else:
                state = "Tu cuenta no esta activa, por favor ponte en contacto con el administrador."
        else:
        	state = "Tu nombre de usuario y/o contraseña no coinciden."	
    if request.user.is_authenticated:
        return redirect('/')
    return render(request,'login.html',{'state':state})


@login_required(None, 'login', '/login/')
#@csrf_protect
#@ensure_csrf_cookie
def logout_view(request):
    logout(request)
    return redirect("/")

def tipo_empresa(request):
    return render(request, 'type_company.html')


@login_required(None,'login','/login/')
def index(request):
    tracks = Track.objects.all().order_by('usuario', '-timestamp').distinct('usuario')
    for track in tracks:
        print("Usuario = "+str(track.usuario))
        print("Last Check = "+str(track.timestamp))
        print("Latitud = "+str(track.latitud))
    hoy = date.today()
    # obtener todos los repositores que marcaron presencia hoy
    # Intentamos obtener cuantos usuarios hicieron sus marcaciones en el dia.
    try:
        marcantes_entrada = Marcaciones.objects.filter(fecha=hoy).distinct('usuario').count()
    except:
        marcantes_entrada = 0
    # marcantes_salida = Marcacione.objects.filter(fecha=hoy,estado="1").distinct('usuario').count()
    marcaciones= Marcaciones.objects.all().order_by('-id')[:10]
    marcaciones_todas= Marcaciones.objects.all().count()
    # Chequeamos si el usuario actual es un supervisor
    usuario_actual = request.user
    try:
        sup = Supervisor.objects.get(user=usuario_actual)
        print("SUPERVISOR :"+str(sup))
    except:
        sup = ''
        print("SUPERVISOR : NO ES")
    if(sup == ''):
        usuarios   = Usuario.objects.all()
    else:
        usuarios   = Usuario.objects.filter(supervisor = sup)
    supervisores= Supervisor.objects.all().count()
    return render(request, 'index.html',{'marcaciones':marcaciones,'marcaciones_todas':marcaciones_todas,'usuarios':usuarios,
                                                'marcantes_entrada':marcantes_entrada,'supervisores':supervisores,
                                                'tracks':tracks })



    
@login_required(None,'login','/login/') 
@csrf_protect
@ensure_csrf_cookie 
def registrar_repositor(request):
    if request.method == "POST":
        form = RegistroRepositorForm(request.POST)
        if form.is_valid():
            new_user = User.objects.create_user(form.cleaned_data['username'], (form.cleaned_data['email'] or "controller@tecnodesign.com.py"), form.cleaned_data['username'])
            print(new_user.id)
            new_user.first_name = form.cleaned_data['nombres']
            new_user.last_name = form.cleaned_data['apellidos']
            new_user.save()
            # Chequeamos si el usuario actual es un supervisor
            usuario_actual = request.user
            try:
                sup = Supervisor.objects.get(user=usuario_actual)
                nuevo_personal = Usuario.objects.create(usuario=new_user,ci=form.cleaned_data['legajo'], supervisor = sup)
                print("SUPERVISOR :"+str(sup))
            except:
                sup = ''
                print("SUPERVISOR : NO ES")
                nuevo_personal = Usuario.objects.create(usuario=new_user,ci=form.cleaned_data['legajo'])
            return redirect('/colaboradores/listado/')
        else:
            return render(request,'registrar_admin.html',{'form':form})
    else:
        form = RegistroRepositorForm()
    return render(request, 'registrar_repositor.html',{'form':form})

@login_required(None,'login','/login/')
def listado_repositores(request):
    # Chequeamos si el usuario actual es un supervisor
    usuario_actual = request.user
    try:
        sup = Supervisor.objects.get(user=usuario_actual)
        print("SUPERVISOR :"+str(sup))
    except:
        sup = ''
        print("SUPERVISOR : NO ES")
    if(sup == ''):
        colaboradores   = Usuario.objects.all()
        supervisores    = Supervisor.objects.all() 
    else:
        colaboradores   = Usuario.objects.filter(supervisor = sup)
        supervisores    =  ''
    return render(request, 'listado_repositores.html',{'repositores':colaboradores,'supervisores':supervisores})

@login_required(None,'login','/login/')
@csrf_protect
@ensure_csrf_cookie  
def editar_repositor(request,usuario):
    if request.method == "POST":
        nombres = request.POST.get('nombres')
        apellidos = request.POST.get('apellidos')
        email = request.POST.get('email')
        legajo = request.POST.get('legajo')
        usuario1 = request.POST.get('usuario')
        exclude_id = Usuario.objects.get(id=usuario)
        if User.objects.filter(username=usuario1).exclude(username=exclude_id).exists():
            id2 = Usuario.objects.get(id=usuario)
            form = EditarRepositorForm(instance=id2)
            error_msg = "Ya existe el nombre de usuario "+usuario1+", use otro diferente."
            return render(request, 'editar_repositor.html',{'form':form,'usuario':id2,'error_msg':error_msg})
        else:
            editar_personal = Usuario.objects.get(id=usuario)
            editar_personal.ci = legajo
            editar_personal.save()
            editar_usuario = User.objects.get(username=editar_personal)
            editar_usuario.first_name = nombres
            editar_usuario.last_name = apellidos
            editar_usuario.email = email
            editar_usuario.username = usuario1
            editar_usuario.save()
            return redirect('/colaboradores/listado/')
    else:
        id2 = Usuario.objects.get(id=usuario)
        print(id2.usuario.id)
        user_repositor = User.objects.get(id=id2.usuario.id)
        form = EditarRepositorForm(instance=id2)
        if user_repositor.is_active:   
            habilitado = True
        else:
            habilitado = False
    comercios = Area.objects.all()
    return render(request, 'editar_repositor.html',{'comercios':comercios,'form':form,'usuario':id2,'habilitado':habilitado})

@login_required(None,'login','/login/')
def repositor(request,usuario):
    ultimo_contrato = Contrato.objects.latest('id')
    hoy = date.today()
    user = request.user
    if ultimo_contrato.fecha_caducidad >= hoy or user.is_superuser:
        usuarios = User.objects.filter(is_active=True,is_superuser=False, is_staff=False)
        limite_usuarios = ultimo_contrato.limite_usuarios
        porcentaje = int(usuarios.count()*100/limite_usuarios)
        marcaciones= Marcacione.objects.filter(usuario=usuario).order_by('-fecha','-hora')
        if 'inicio' in request.GET and 'fin' in request.GET:
            f_inicio = request.GET.get('inicio')
            f_fin = request.GET.get('fin')
            inicio = datetime.strptime(f_inicio, "%d/%m/%Y")
            fin = datetime.strptime(f_fin, "%d/%m/%Y")
            marcaciones= Marcacione.objects.filter(usuario=usuario,fecha__range=[inicio, fin]).order_by('-fecha','-hora')
            filtro_msg = "Filtro de fechas entre el "+str(f_inicio)+" y el "+str(f_fin)
            
            return render(request, 'repositor.html',{'marcaciones':marcaciones,'filtro_msg':filtro_msg,'usuario':usuario,'inicio':inicio,'fin':fin,'usuarios':usuarios,'porcentaje':porcentaje,'limite_usuarios':limite_usuarios})
            
            
        return render(request, 'repositor.html',{'marcaciones':marcaciones,'usuario':usuario,'usuarios':usuarios,'porcentaje':porcentaje,'limite_usuarios':limite_usuarios})
    else:
        logout(request)
        state = "Tu cuenta ha caducado, por favor ponte en contacto con el administrador."
        print(state)
        return render(request,'login.html',{'state':state})

@login_required(None,'login','/login/')
def inhabilitar_repositor(request,usuario):
    # cambia el estado de User a inactivo
    inhabilitar_usuario = User.objects.get(id=usuario)
    inhabilitar_usuario.is_active = False
    inhabilitar_usuario.save()
    return redirect('/colaboradores/listado/')

@login_required(None,'login','/login/')
def habilitar_repositor(request,usuario):
        # cambia el estado de User a activo
        habilitar_usuario = User.objects.get(id=usuario)
        habilitar_usuario.is_active = True
        habilitar_usuario.save()
        return redirect('/colaboradores/listado/')

@login_required(None,'login','/login/') 
@csrf_protect
@ensure_csrf_cookie 
def registrar_supervisor(request):
    if request.method == "POST":
        form = RegistroSupervisorForm(request.POST)
        if form.is_valid():
            new_user = User.objects.create_user(form.cleaned_data['username'], (form.cleaned_data['email'] or "controller@tecnodesign.com.py"), form.cleaned_data['username'])
            print(new_user.id)
            new_user.first_name = form.cleaned_data['nombres']
            new_user.last_name = form.cleaned_data['apellidos']
            new_user.is_staff = True
            new_user.save()
            nuevo_personal = Supervisor.objects.create(user=new_user)
            return redirect('/colaboradores/listado/')
        else:
            return render(request,'registrar_supervisor.html',{'form':form})
    else:
        form = RegistroSupervisorForm()
        
    return render(request, 'registrar_supervisor.html',{'form':form})







