"""
Credential models definition
"""
from django.db import models

# Create your models here.
class Users(models.Model):
    """
    Users class definition
    """
    username = models.CharField(max_length=20, blank=False)
    inserted_timestamp = models.DateTimeField(auto_now_add=True)
    class Meta:
        ordering = ('username',)

class UsersDetails(models.Model):
    """
    Users details class definition
    """
    user = models.ForeignKey(
        Users,
        related_name='id_user_details',
        on_delete=models.DO_NOTHING,
        # default=1
        )
    user_title = models.CharField(max_length=30, blank=True)
    user_first_name = models.CharField(max_length=25, blank=True)
    user_last_name = models.CharField(max_length=40, blank=True)
    user_birthdate = models.DateField(blank=False)
    inserted_timestamp = models.DateTimeField(auto_now_add=True)
    details_creator = models.ForeignKey(
        Users,
        related_name='dtlcreator_user_details',
        on_delete=models.DO_NOTHING,
        # default=1
        )
    class Meta:
        ordering = ('user_id',)

class UsersPasswords(models.Model):
    """
    Users passwords class definition
    """
    user = models.ForeignKey(
        Users,
        related_name='id_user_password',
        on_delete=models.DO_NOTHING)
    salt = models.CharField(max_length=200, blank=True)
    pwdhash = models.CharField(max_length=200, blank=True)
    inserted_timestamp = models.DateTimeField(auto_now_add=True)
    pwd_creator = models.ForeignKey(
        Users,
        related_name='pwdcreator_user_details',
        on_delete=models.DO_NOTHING)
    class Meta:
        ordering = ('user_id',)

class UsersAllData(models.Model):
    """
    Users All Data class definition
    """
    # id = models.IntegerField()
    username = models.CharField(max_length=20, blank=False)
    aliasname = models.CharField(max_length=30, blank=True)
    fname = models.CharField(max_length=25, blank=True)
    lname = models.CharField(max_length=40, blank=True)
    bdate = models.DateField()
    rec_time_details = models.DateTimeField()
    salt = models.CharField(max_length=200, blank=True)
    hash = models.CharField(max_length=200, blank=True)
    rec_time_password = models.DateTimeField()
    class Meta:
        managed = False
        db_table = 'credentials_vw_usersalldata'
        ordering = ('id',)