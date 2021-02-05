from django.db import models
from django.contrib.auth.models import User
# Create your models here.

class Company_Register(models.Model):
	user=models.ForeignKey(User, related_name='Company_Register', on_delete=models.CASCADE)
	companyname=models.CharField(max_length=255)
	cityname=models.CharField(max_length=255)
	jobtitle=models.CharField(max_length=255)
	mobno=models.CharField(max_length=12)
	cnf_password=models.CharField(max_length=20)
class Project_Skills(models.Model):
	user=models.ForeignKey(User, related_name='Project_Skills', on_delete=models.CASCADE)
	skill=models.CharField(max_length=500)
	nda=models.CharField(max_length=255)
class Incentiv(models.Model):
	user=models.ForeignKey(User, related_name='Incentives', on_delete=models.CASCADE)
	cash_prize=models.CharField(max_length=255, null=True,blank=True)
	cash_prize_description=models.TextField(null=True,blank=True)
	letter_of_recommendation=models.CharField(max_length=255,null=True,blank=True)
	letter_of_recommendation_description=models.TextField(null=True,blank=True)
	internship_opportunity=models.CharField(max_length=255,null=True,blank=True)
	internship_opportunity_description=models.TextField(null=True,blank=True)
	team_lunch_with_ceo=models.CharField(max_length=255,null=True,blank=True)
	team_lunch_with_ceo_description=models.TextField(null=True,blank=True)
	job_opportunity=models.CharField(max_length=255,null=True,blank=True)
	job_opportunity_description=models.TextField(max_length=255,null=True,blank=True)
class Plans(models.Model):
	user=models.ForeignKey(User, related_name='Plans', on_delete=models.CASCADE)
	plan=models.CharField(max_length=140)
class Project_Detailss(models.Model):
	user=models.ForeignKey(User, related_name='Project_Detailss', on_delete=models.CASCADE)
	project_title=models.CharField(max_length=255)
	project_type=models.CharField(max_length=255)
	deadline_date=models.CharField(max_length=255)
	choose_template=models.CharField(max_length=255)
	description=models.TextField()
