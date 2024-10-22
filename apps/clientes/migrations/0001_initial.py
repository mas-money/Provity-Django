# -*- coding: utf-8 -*-
# Generated by Django 1.11 on 2018-08-18 23:53
from __future__ import unicode_literals

from django.db import migrations, models
import tenant_schemas.postgresql_backend.base


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Client',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('schema_name', models.CharField(max_length=63, unique=True, validators=[tenant_schemas.postgresql_backend.base._check_schema_name])),
                ('razon_social', models.CharField(max_length=100)),
                ('ruc', models.CharField(max_length=50)),
                ('email', models.CharField(max_length=50)),
                ('telefono', models.CharField(max_length=20)),
                ('plan', models.CharField(choices=[('0', 'Básico'), ('1', 'Premium')], max_length=10)),
                ('tipo_empresa', models.CharField(blank=True, choices=[('0', 'Auditores Externos'), ('1', 'Cobradores'), ('2', 'Conductores de Transporte de Caudales'), ('3', 'Fumigadores'), ('4', 'Guardias de Seguridad'), ('5', 'Instaladores'), ('6', 'Jefes de Sucursal'), ('7', 'Limpiadores'), ('8', 'Modelos'), ('9', 'Personal de Activación de Campañas'), ('10', 'Personal de Delivery'), ('11', 'Promotoras'), ('12', 'Repartidores'), ('13', 'Repositores'), ('14', 'Técnicos'), ('15', 'Trade Marketing'), ('16', 'Vendedores'), ('17', 'Visitadores Médicos')], default='', max_length=10)),
                ('cantidad_usuarios', models.CharField(max_length=5)),
                ('paid_until', models.DateField()),
                ('on_trial', models.BooleanField()),
                ('domain_url', models.CharField(default='', max_length=100)),
                ('created_on', models.DateField(auto_now_add=True)),
            ],
            options={
                'abstract': False,
            },
        ),
    ]
