"""
Views :: Credentials
"""
# pylint: disable=line-too-long
# from django.shortcuts import render
from rest_framework import generics
from rest_framework.response import Response
from rest_framework.reverse import reverse
from credentials.models import Users, UsersDetails, UsersPasswords, UsersAllData
from credentials.serializers import UsersSerializer, UsersDetailsSerializer, UsersPasswordsSerializer, UsersAllDataSerializer # , UsersDetailsPasswordsSerializer
from rest_framework.decorators import api_view
from rest_framework.views import APIView
import json

class UserList(generics.ListCreateAPIView):
    """
    Views :: Credentials :: Users List
    """
    queryset = Users.objects.all()
    serializer_class = UsersSerializer
    name = 'users-list'

class UserDetail(generics.RetrieveUpdateDestroyAPIView):
    """
    Views :: Credentials :: Users Detail
    """
    queryset = Users.objects.all()
    serializer_class = UsersSerializer
    name = 'users-detail'


class UserDetailsList(generics.ListCreateAPIView):
    """
    Views :: Credentials :: User Details List
    """
    queryset = UsersDetails.objects.all()
    serializer_class = UsersDetailsSerializer
    name = 'usersdetails-list'

class UserDetailsDetail(generics.RetrieveUpdateDestroyAPIView):
    """
    Views :: Credentials :: User Details Detail
    """
    queryset = UsersDetails.objects.all()
    serializer_class = UsersDetailsSerializer
    name = 'usersdetails-detail'

class UserPasswordsList(generics.ListCreateAPIView):
    """
    Views :: Credentials :: User Passwords list
    """
    queryset = UsersPasswords.objects.all()
    serializer_class = UsersPasswordsSerializer
    name = 'userpasswords-list'

class UserPasswordsDetail(generics.RetrieveUpdateDestroyAPIView):
    """
    Views :: Credentials :: User Passwords Detail
    """
    queryset = UsersPasswords.objects.all()
    serializer_class = UsersPasswordsSerializer
    name = 'userpasswords-detail'

class UsersAllDataList(generics.ListAPIView):
    """
    Views :: Credentials :: Users All Data list
    """
    queryset = UsersAllData.objects.all()
    serializer_class = UsersAllDataSerializer
    name = 'usersalldata-list'

class UserxList(APIView):
    """
    List all snippets, or create a new snippet.
    """
    def get(self, request, format=None):
        thisdict = {}
        for x in request.data:
            thisdict[x] = request.data[x] + 'LL'
        return Response(thisdict)

    # def post(self, request, format=None):
    #     serializer = SnippetSerializer(data=request.data)
    #     if serializer.is_valid():
    #         serializer.save()
    #         return Response(serializer.data, status=status.HTTP_201_CREATED)
    #     return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

class ApiRoot(generics.GenericAPIView):
    """
    Views :: Credentials :: ApiRoot
    """
    name = 'api-root'
    def get(self, request, *args, **kwargs):
        """
        list routing root
        """
        return Response({
            'user-list': reverse(UserList.name, request=request),
            'user-details': reverse(UserDetailsList.name, request=request),
            'user-passwords': reverse(UserPasswordsList.name, request=request),
            'user-data': reverse(UsersAllDataList.name, request=request),
            'userx-data': reverse(UserxList.name, request=request),
        })
