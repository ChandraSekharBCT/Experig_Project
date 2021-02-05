from django.contrib import admin
from testapp.models import Company_Register,Project_Skills,Incentiv,Plans,Project_Detailss
# Register your models here.
class Company_Admin(admin.ModelAdmin):
	list_display=['user','companyname','jobtitle','mobno','cnf_password']
class Project_Admin(admin.ModelAdmin):
	list_display=['user','skill','nda']
class IncentivAdmin(admin.ModelAdmin):
	list_display=['user','cash_prize','cash_prize_description','letter_of_recommendation','letter_of_recommendation_description','internship_opportunity','internship_opportunity_description','team_lunch_with_ceo','team_lunch_with_ceo_description','job_opportunity','job_opportunity_description']
class PlansAdmin(admin.ModelAdmin):
	list_display=['user','plan']
class Project_DetailssAdmin(admin.ModelAdmin):
	list_display=['user','project_title','project_type','deadline_date','choose_template','description']
admin.site.register(Company_Register,Company_Admin)
admin.site.register(Project_Skills,Project_Admin)
admin.site.register(Incentiv,IncentivAdmin)
admin.site.register(Plans,PlansAdmin)
admin.site.register(Project_Detailss,Project_DetailssAdmin)