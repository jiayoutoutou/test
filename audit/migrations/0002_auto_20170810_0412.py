# -*- coding: utf-8 -*-
# Generated by Django 1.11.4 on 2017-08-10 04:12
from __future__ import unicode_literals

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('audit', '0001_initial'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='sessionlog',
            name='account',
        ),
        migrations.RemoveField(
            model_name='sessionlog',
            name='host_user_bind',
        ),
        migrations.DeleteModel(
            name='SessionLog',
        ),
    ]
