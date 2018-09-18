from django.db import models
from tenant_schemas.models import TenantMixin

PLANES          =(("0", "Básico"),("1", "Premium"))
MODULO          =(("0", "Marcación"),("1", "Trackeo"))
TIPO_EMPRESA    =(("0", "Auditores Externos"),("1", "Cobradores"),("2", "Conductores de Transporte de Caudales"),("3", "Fumigadores"),("4", "Guardias de Seguridad"),
        ("5", "Instaladores"),("6", "Jefes de Sucursal"),("7", "Limpiadores"), ("8", "Modelos"),("9", "Personal de Activación de Campañas"),
        ("10", "Personal de Delivery"),("11", "Promotoras"),("12", "Repartidores"),("13", "Repositores"),("14", "Técnicos"),("15", "Trade Marketing"),
        ("16", "Vendedores"),("17", "Visitadores Médicos"))

class Client(TenantMixin):
    razon_social 		= models.CharField(max_length=100)
    ruc 				= models.CharField(max_length=50)
    email 				= models.CharField(max_length=50)
    telefono 			= models.CharField(max_length=20)
    plan                = models.CharField(max_length=10, choices=PLANES)
    modulo              = models.CharField(max_length=10, choices=MODULO, default='0')
    tipo_empresa        = models.CharField(max_length=10, choices=TIPO_EMPRESA, default='', blank=True, null= False)
    cantidad_usuarios	= models.CharField(max_length=5)
    paid_until 			= models.DateField()
    on_trial			= models.BooleanField()
    domain_url          = models.CharField(max_length=100, default='')
    created_on 			= models.DateField(auto_now_add=True)

    # default true, schema will be automatically created and synced when it is saved
    auto_create_schema = True
    
    def __str__(self):
        return str(self.razon_social)