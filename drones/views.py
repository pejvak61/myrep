"""
Views :: drones
"""
# from django.shortcuts import render
from rest_framework import generics
from rest_framework.response import Response
from rest_framework.reverse import reverse
from drones.models import DroneCategory
from drones.models import Drone
from drones.models import Pilot
from drones.models import Competition
from drones.serializers import DroneCategorySerializer
from drones.serializers import DroneSerializer
from drones.serializers import PilotSerializer
from drones.serializers import PilotCompetitionSerializer

class DroneCategoryList(generics.ListCreateAPIView):
    """
    drones category list
    """
    queryset = DroneCategory.objects.all()
    serializer_class = DroneCategorySerializer
    name = 'dronecategory-list'

class DroneCategoryDetail(generics.RetrieveUpdateDestroyAPIView):
    """
    drones category details
    """
    queryset = DroneCategory.objects.all()
    serializer_class = DroneCategorySerializer
    name = 'dronecategory-detail'

class DroneList(generics.ListCreateAPIView):
    """
    drone list
    """
    queryset = Drone.objects.all()
    serializer_class = DroneSerializer
    name = 'drone-list'

class DroneDetail(generics.RetrieveUpdateDestroyAPIView):
    """
    drone details list
    """
    queryset = Drone.objects.all()
    serializer_class = DroneSerializer
    name = 'drone-detail'

class PilotList(generics.ListCreateAPIView):
    """
    pilot list
    """
    queryset = Pilot.objects.all()
    serializer_class = PilotSerializer
    name = 'pilot-list'

class PilotDetail(generics.RetrieveUpdateDestroyAPIView):
    """
    pilots details category list
    """
    queryset = Pilot.objects.all()
    serializer_class = PilotSerializer
    name = 'pilot-detail'

class CompetitionList(generics.ListCreateAPIView):
    """
    competition list
    """
    queryset = Competition.objects.all()
    serializer_class = PilotCompetitionSerializer
    name = 'competition-list'

class CompetitionDetail(generics.RetrieveUpdateDestroyAPIView):
    """
    competition details list
    """
    queryset = Competition.objects.all()
    serializer_class = PilotCompetitionSerializer
    name = 'competition-detail'

class ApiRoot(generics.GenericAPIView):
    """
    ApiRoot list
    """
    name = 'api-root'
    def get(self, request, *args, **kwargs):
        """
        Get Method definition
        """
        return Response({
            'drone-categories': reverse(DroneCategoryList.name, request=request),
            'drones': reverse(DroneList.name, request=request),
            'pilots': reverse(PilotList.name, request=request),
            'competitions': reverse(CompetitionList.name, request=request)
        })
