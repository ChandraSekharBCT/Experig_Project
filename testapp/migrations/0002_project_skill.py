# Generated by Django 3.0.6 on 2021-02-04 14:19

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('testapp', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='Project_Skill',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('skill', models.CharField(max_length=500)),
                ('nda', models.CharField(max_length=255)),
            ],
        ),
    ]
