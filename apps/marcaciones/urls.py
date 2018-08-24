from django.conf.urls import url
from . import views

from django.conf.urls import handler404
from app.views import mi_error_404, ReportePersonasExcel
 
handler404 = mi_error_404

urlpatterns = [
    url(r'^$',  views.index),
    url(r'^login/', views.login_view),
    url(r'^logout/$', views.logout_view),
    url(r'^registrar_repositor/', views.registrar_repositor),
    url(r'^registrar_admin/', views.registrar_admin),
    url(r'^editar_repositor/(?P<usuario>.+)/$', views.editar_repositor),
    url(r'^inhabilitar_repositor/(?P<usuario>.+)/$', views.inhabilitar_repositor),
    url(r'^habilitar_repositor/(?P<usuario>.+)/$', views.habilitar_repositor),
    # Comercios
    url(r'^comercios/add/', views.add_comercio),
    url(r'^comercios/listado/', views.listado_comercio),
    url(r'^comercios/editar/(?P<comercio>.+)/$', views.editar_comercio),
    url(r'^comercios/eliminar/(?P<comercio>.+)/$', views.eliminar_comercio),
    # Reportes
    url(r'^listado_repositores/', views.listado_repositores),
    url(r'^activos/', views.activos),
    url(r'^inactivos/', views.inactivos),
    url(r'^repositor/(?P<usuario>[-\d]+)/$', views.repositor),
    url(r'^marcaciones/', views.listado_marcaciones),
    url(r'^reportes_marcaciones_general/$',ReportePersonasExcel.as_view(), name="reporte_personas_excel"),
]