# Generated by Django 2.2.6 on 2019-11-20 16:36

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('credentials', '0003_auto_20191120_1936'),
    ]

    operations = [
        migrations.RenameModel(
            old_name='UserPassword',
            new_name='UsersPasswords',
        ),
    ]