from . import views
from django.conf.urls import url, include
from django.contrib import admin

#from django.conf.urls import handler404
#from app.views import mi_error_404, ReportePersonasExcel
 
#handler404 = mi_error_404

urlpatterns = [
    # Estas URLS se van a usar para la web y la seccion de registrar una nueva empresa
    url(r'^admin/', admin.site.urls),
    url(r'^$',  views.registrar),
    url(r'^cliente/validar/(?P<url>[-\w]+)/', views.buscar_url),
]