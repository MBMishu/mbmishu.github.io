# Generated by Django 2.2.10 on 2021-06-24 01:44

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('home', '0002_auto_20210624_0743'),
    ]

    operations = [
        migrations.AddField(
            model_name='about',
            name='user_email',
            field=models.CharField(blank=True, max_length=255, null=True),
        ),
        migrations.AddField(
            model_name='about',
            name='user_location',
            field=models.CharField(blank=True, max_length=255, null=True),
        ),
        migrations.AddField(
            model_name='about',
            name='user_number',
            field=models.CharField(blank=True, max_length=255, null=True),
        ),
    ]