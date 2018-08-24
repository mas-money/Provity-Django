# -*- coding: utf-8 -*-
from django import forms
from .models import *
from django.conf import settings

class EditarComercioForm (forms.ModelForm):

    class Meta:
        model = Area

        fields = '__all__'
        #exclude = ('usuario',)

        widgets = {
        	'nombre':forms.TextInput(attrs={'class':'form-control'}),
        }