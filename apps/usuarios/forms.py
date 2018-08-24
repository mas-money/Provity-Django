# -*- coding: utf-8 -*-
from django import forms
from .models import *
from django.conf import settings


class RegistroRepositorForm (forms.Form):
    nombres = forms.CharField(max_length=100,required=True)
    apellidos = forms.CharField(max_length=100, required=True)
    email = forms.CharField(required= False)
    legajo = forms.CharField(max_length=100, required= False)
    username = forms.CharField(max_length=100, required=True)


class EditarRepositorForm (forms.ModelForm):

    class Meta:
        model = Usuario

        fields = '__all__'
        #exclude = ('usuario',)