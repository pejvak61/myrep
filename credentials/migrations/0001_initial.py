# Generated by Django 2.2.6 on 2019-11-20 09:20

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Users',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('username', models.CharField(max_length=20)),
                ('inserted_timestamp', models.DateTimeField(auto_now_add=True)),
            ],
            options={
                'ordering': ('username',),
            },
        ),
        migrations.CreateModel(
            name='UsersDetails',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('user_title', models.CharField(blank=True, max_length=30)),
                ('user_first_name', models.CharField(blank=True, max_length=25)),
                ('user_last_name', models.CharField(blank=True, max_length=40)),
                ('user_birthdate', models.DateField()),
                ('inserted_timestamp', models.DateTimeField(auto_now_add=True)),
                ('details_creator', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='dtlcreator_user_details', to='credentials.Users')),
                ('user_id', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='id_user_details', to='credentials.Users')),
            ],
            options={
                'ordering': ('user_id',),
            },
        ),
        migrations.CreateModel(
            name='UserPassword',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('salt', models.CharField(blank=True, max_length=200)),
                ('pwdhash', models.CharField(blank=True, max_length=200)),
                ('inserted_timestamp', models.DateTimeField(auto_now_add=True)),
                ('pwd_creator', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='pwdcreator_user_details', to='credentials.Users')),
                ('user_id', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='id_user_password', to='credentials.Users')),
            ],
            options={
                'ordering': ('user_id',),
            },
        ),
    ]