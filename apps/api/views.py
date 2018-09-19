from django.db.models import Q
from rest_framework.filters import SearchFilter
from rest_framework.viewsets import ModelViewSet
from apps.api.serializers import *
# Importamos los diferentes modelos
from apps.areas.models import *
from apps.clientes.models import *
from apps.marcaciones.models import *
from apps.tracking.models import *
from apps.usuarios.models import *
from apps.reportes.models import *

from rest_framework import permissions, authentication
from rest_framework.views import APIView
from rest_framework.authentication import SessionAuthentication, BasicAuthentication
from rest_framework.permissions import IsAuthenticated
from rest_framework.response import Response

from rest_framework import generics
# Create your views here.

		

from rest_framework import viewsets
from rest_framework.permissions import AllowAny
 
from .permissions import IsStaffOrTargetUser



class UserPermissionsObj(permissions.BasePermission):

    def has_object_permission(self, request, view, obj):
        if request.user.is_staff:
            return True

        return obj == request.user
		
		
class MarcacioneViewSet(generics.ListAPIView):
    serializer_class = MarcacioneSerializer
    permission_classes=(IsAuthenticated,UserPermissionsObj)

    def get_queryset(self):
        """
        This view should return a list of all the purchases for
        the user as determined by the username portion of the URL.
        """
        usuario = str(self.kwargs['usuario'])
        usuario2 = str(self.request.user.id)
        usuariofinal = 0
        if usuario == usuario2:
            usuariofinal = usuario
        elif usuario2 == "AnonymousUser":
            usuariofinal = 0
        else:
            print("No son iguales")
        return Marcaciones.objects.filter(usuario=usuariofinal).order_by('-id')
		
class MarcacionesViewSet(ModelViewSet):
    serializer_class = MarcacioneSerializer
    queryset = Marcaciones.objects.all().order_by('-id')
    permission_classes=(IsAuthenticated,UserPermissionsObj)
		
class LastCheckViewSet(ModelViewSet):
    serializer_class = UltimaMarcacionSerializer
    queryset = Marcaciones.objects.all().order_by('-id')
    permission_classes=(IsAuthenticated,UserPermissionsObj)
        
class UserView(ModelViewSet):
    serializer_class = UsuarioSerializer
    queryset = Usuario.objects.all().order_by('-id')
    permission_classes = (IsAuthenticated,)
        
class ComerciosView(ModelViewSet):
    serializer_class = ComerciosSerializer
    queryset = Area.objects.all().order_by('-id')
    permission_classes = (IsAuthenticated,)
        
class TrackViewSet(ModelViewSet):
    serializer_class = TrackSerializer
    queryset = Track.objects.all().order_by('-id')
    permission_classes=(IsAuthenticated,UserPermissionsObj)
        
class LiveTrackViewSet(ModelViewSet):
    serializer_class = TrackSerializer
    queryset = Track.objects.all().order_by('usuario', '-timestamp').distinct('usuario')
    permission_classes=(UserPermissionsObj,)

class ReportesViewSet(ModelViewSet):
    serializer_class = ReporteSerializer
    queryset = Reporte.objects.all().order_by('-id')
    permission_classes=(IsAuthenticated,UserPermissionsObj)
        
class EmpresaViewSet(generics.ListAPIView):
    serializer_class = EmpresaSerializer
    queryset = Client.objects.all().order_by('-id')
    def get_queryset(self):
        """
        This view should return a list of all the purchases for
        the user as determined by the username portion of the URL.
        """
        usuario = str(self.kwargs['empresa'])+'.provity.com.py'
        return Client.objects.filter(domain_url=usuario)
    permission_classes=(IsAuthenticated,UserPermissionsObj)









