from django.contrib import admin

# Register your models here.
from .models import about,resume,my_project,skill

class ABOUTAdmin(admin.ModelAdmin):
    list_display = ('user_name','about_details','user_email','user_number','user_location')


class SKILLAdmin(admin.ModelAdmin):
    list_display = ('skill_name','skill_photo')
    
class RESUMEAdmin(admin.ModelAdmin):
    list_display = ('resume_title','resume_date','resume_place')
    list_filter = ('resume_date',)

class PROJECTAdmin(admin.ModelAdmin):
    list_display = ('project_name','project_status','project_link')
    list_filter = ('project_status',)



admin.site.register(about,ABOUTAdmin)
admin.site.register(resume,RESUMEAdmin)
admin.site.register(my_project,PROJECTAdmin)
admin.site.register(skill,SKILLAdmin)