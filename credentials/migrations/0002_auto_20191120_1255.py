# Generated by Django 2.2.6 on 2019-11-20 09:25

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('credentials', '0001_initial'),
    ]

    operations = [
        migrations.RenameField(
            model_name='userpassword',
            old_name='user_id',
            new_name='user',
        ),
        migrations.RenameField(
            model_name='usersdetails',
            old_name='user_id',
            new_name='user',
        ),
    ]
