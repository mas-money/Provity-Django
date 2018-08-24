from django.conf.urls import url
from . import views
from django.contrib import admin

urlpatterns = [
    # Areas
    url(r'^areas/add/', views.add_area),
    url(r'^areas/listado/', views.listado_areas),
    url(r'^areas/edit/(?P<area>.+)/$', views.editar_area),
    url(r'^areas/delete/(?P<area>.+)/$', views.eliminar_area),
]