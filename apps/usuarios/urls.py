from django.conf.urls import url
from . import views
from django.contrib import admin

urlpatterns = [
    url(r'^admin/', admin.site.urls),
    url(r'^$',  views.index, name='index'),
    url(r'^login/', views.login_view, name='login'),
    url(r'^logout/$', views.logout_view, name='logout'),
    url(r'^tipo_empresa/', views.tipo_empresa, name='tipo_empresa'),
    url(r'^caducado/', views.tipo_empresa, name='caducado'),
    # Colaboradores
    url(r'^colaborador/add/', views.registrar_repositor),
    url(r'^colaborador/admin/add/', views.registrar_supervisor),
    url(r'^colaborador/edit/(?P<usuario>.+)/$', views.editar_repositor),
    url(r'^colaborador/out/(?P<usuario>.+)/$', views.inhabilitar_repositor),
    url(r'^colaborador/in/(?P<usuario>.+)/$', views.habilitar_repositor),
    url(r'^colaboradores/listado/', views.listado_repositores),
]