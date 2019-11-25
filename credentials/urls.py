"""
Credentials URL
"""

from django.conf.urls import url
from django.urls import path
from credentials import views

urlpatterns = [
    url(r'^user-list/$',
        views.UserList.as_view(),
        name=views.UserList.name),
    url(r'^user-list/(?P<pk>[0-9]+)$',
        views.UserDetail.as_view(),
        name=views.UserDetail.name),
    url(r'^user-details/$',
        views.UserDetailsList.as_view(),
        name=views.UserDetailsList.name),
    url(r'^user-details/(?P<pk>[0-9]+)$',
        views.UserDetailsDetail.as_view(),
        name=views.UserDetailsDetail.name),
    url(r'^user-passwords/$',
        views.UserPasswordsList.as_view(),
        name=views.UserPasswordsList.name),
    url(r'^user-passwords/(?P<pk>[0-9]+)$',
        views.UserPasswordsDetail.as_view(),
        name=views.UserPasswordsDetail.name),
    url(r'^user-data/',
        views.UsersAllDataList.as_view(),
        name=views.UsersAllDataList.name),
    url(r'^$',
        views.ApiRoot.as_view(),
        name=views.ApiRoot.name),
]

urlpatterns += [
    path('userx-list/', views.UserxList.as_view()),
]