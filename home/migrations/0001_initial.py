# Generated by Django 2.2.10 on 2021-06-24 01:37

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='about',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('user_name', models.CharField(blank=True, max_length=255, null=True)),
                ('about_details', models.TextField()),
                ('about_photo', models.ImageField(default='', upload_to='images')),
                ('user_location', models.CharField(blank=True, max_length=255, null=True)),
                ('user_email', models.CharField(blank=True, max_length=255, null=True)),
                ('user_number', models.CharField(blank=True, max_length=255, null=True)),
            ],
        ),
        migrations.CreateModel(
            name='my_project',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('project_name', models.CharField(max_length=255)),
                ('project_status', models.CharField(blank=True, choices=[('website', 'website'), ('picture', 'picture'), ('video', 'video')], max_length=200, null=True)),
                ('project_link', models.CharField(blank=True, max_length=255, null=True)),
                ('project_photo', models.ImageField(default='', upload_to='images')),
            ],
        ),
        migrations.CreateModel(
            name='resume',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('resume_title', models.CharField(max_length=255)),
                ('resume_date', models.CharField(blank=True, max_length=255, null=True)),
                ('resume_place', models.CharField(blank=True, max_length=255, null=True)),
                ('resume_icon', models.CharField(default='', max_length=255)),
            ],
        ),
        migrations.CreateModel(
            name='skill',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('skill_name', models.TextField()),
                ('skill_photo', models.ImageField(default='', upload_to='images')),
            ],
        ),
    ]
