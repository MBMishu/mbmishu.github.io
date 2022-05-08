from django.shortcuts import render , redirect
from django.http import HttpResponse

from django.core.mail import send_mail, BadHeaderError, EmailMultiAlternatives


import json
import datetime
import csv
# Create your views here.
from .models import *

def index(request):
    success = False


    # resume section
    allresume = resume.objects.order_by('-id')
    
    
    # skill
    allskills = skill.objects.all()
    # about
    aboutinfo = about.objects.all()[:1]
    # project
    allproject = my_project.objects.all().order_by('-id')


    if request.method == "POST":
        name = request.POST['name']
        email = request.POST['email']
        subject = request.POST['subject']
        message = request.POST['message']

        to_mail =  'masumbillah1717@gmail.com'  
        subject, from_email, to = f'{subject}', f'{email}', f'{to_mail}'
        cc_email = ['a.t.m.masum.billah@g.bracu.ac.bd']
        text_content = ''
        html_content = f'<p>Name :  {name}</p>\
            <p>Email :  {email}</p>\
            <p>Subject :  {subject}</p>\
            <p>Message :  {message}</p>'
        
        try:
            msg = EmailMultiAlternatives(subject, text_content, from_email, [to],cc=cc_email)
            msg.attach_alternative(html_content, "text/html")
            msg.send()
            
            success = True
        except:
            print('mail does not send to -', to_mail)       
    else:
        success = False

    context = {'resumes':allresume , 'skills':allskills , 'about':aboutinfo,'projects':allproject,'success':success}
    return render(request,'index.html',context)
