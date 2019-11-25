"""
Views :: myrep
"""
# from django.shortcuts import render
from rest_framework import generics
from rest_framework.response import Response
from rest_framework.reverse import reverse



# class ApiRoot(generics.GenericAPIView):
#     """
#     ApiRoot list
#     """
#     name = 'api-root'
#     def get(self, request, *args, **kwargs):
#         """
#         Get Method definition
#         """
#         return Response({
#             'admin': reverse('admin', request=request),
#             'auth': reverse('auth', request=request),
#             'drones': reverse('drones', request=request),
#         })
