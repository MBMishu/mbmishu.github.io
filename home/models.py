from django.db import models
from django.contrib.auth.models import User, Group, AbstractUser
from ckeditor.fields import RichTextField 
# Create your models here.

class about(models.Model):
    
    user_name = models.CharField(max_length=255,null = True,blank = True)
    about_details = RichTextField(null = True,blank = True)
    about_photo = models.ImageField(upload_to="images",default='')
    
    user_location = models.CharField(max_length=255,null = True,blank = True)
    user_email = models.CharField(max_length=255,null = True,blank = True)
    user_number = models.CharField(max_length=255,null = True,blank = True)




    def __str__(self):
        return str(self.id)

class skill(models.Model):
    
    skill_name = models.CharField(max_length=255,null = True,blank = True)
    skill_photo = models.ImageField(upload_to="images",default='')



    def __str__(self):
        return str(self.id)
    
class resume(models.Model):


    resume_title = models.CharField(max_length=255)
    resume_date = models.CharField(max_length=255,null = True , blank = True)
    resume_place = models.CharField(max_length=255,null = True , blank = True)
    resume_icon = models.CharField(max_length=255,default='')



    def __str__(self):
         return str(self.id)
    

    
class my_project(models.Model):
    
    PROJECT_TYPE =(
        ('website','website'),
        ('picture','picture'),
        ('video','video'),
    )
    project_name= models.CharField(max_length=255)
    project_status = models.CharField(max_length=200, null=True, blank=True, choices=PROJECT_TYPE)
    project_link = models.CharField(max_length=255, null=True, blank=True)
    project_photo = models.ImageField(upload_to="images",default='')

   


    def __str__(self):
        return str(self.id)
    
