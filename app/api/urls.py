from django.conf.urls import include, url
from rest_framework.routers import DefaultRouter
from app.api.views import *

from app.api import views as api_views

router = DefaultRouter()
router.register(r'marcaciones',MarcacionesViewSet,base_name='sitios')
router.register(r'track',TrackViewSet,base_name='track')
router.register(r'live/track',LiveTrackViewSet,base_name='live_track')
router.register(r'ultimamarcacion',LastCheckViewSet,base_name='last')
router.register(r'usuario', UserView, 'usuario')
router.register(r'comercios', ComerciosView, 'comercios')

urlpatterns = [
    url(r'^api/',include(router.urls)),
	url('^api/marcacion/(?P<usuario>.+)/$', MarcacioneViewSet.as_view()),
]