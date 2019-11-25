"""
Credentials Serializers
"""
# pylint: disable=line-too-long
from rest_framework import serializers
from credentials.models import Users
from credentials.models import UsersDetails
from credentials.models import UsersPasswords
from credentials.models import UsersAllData
# import credentials.views

class UsersSerializer(serializers.HyperlinkedModelSerializer):
    """
    Users serializers definition
    """
    class Meta:
        model = Users
        fields = (
            'url',
            'pk',
            'username',
            'inserted_timestamp',
            )

class UsersDetailsSerializer(serializers.HyperlinkedModelSerializer):
    """
    Users details serializers definition
    """
    user = serializers.SlugRelatedField(
        queryset=Users.objects.all(),
        slug_field='username',
    )
    details_creator = serializers.SlugRelatedField(
        queryset=Users.objects.all(),
        slug_field='username',
    )
    class Meta:
        model = UsersDetails
        fields = (
            'url',
            'pk',
            'user',
            'user_title',
            'user_first_name',
            'user_last_name',
            'user_birthdate',
            'inserted_timestamp',
            'details_creator'
        )


class UsersPasswordsSerializer(serializers.HyperlinkedModelSerializer):
    """
    Users password serializers definition
    """
    user = serializers.SlugRelatedField(
        queryset=Users.objects.all(),
        slug_field='username',
    )
    pwd_creator = serializers.SlugRelatedField(
        queryset=Users.objects.all(),
        slug_field='username',
    )
    class Meta:
        model = UsersPasswords
        fields = (
            'pk',
            'user',
            'salt',
            'pwdhash',
            'inserted_timestamp',
            'pwd_creator'
            )

class UsersAllDataSerializer(serializers.HyperlinkedModelSerializer):
    """
    Users, details and passwords serializer definition
    """
    class Meta:
        model = UsersAllData
        fields = (
            'pk',
            'username',
            'aliasname',
            'fname',
            'lname',
            'bdate',
            'rec_time_details',
            'salt',
            'hash',
            'rec_time_password'
            )