from .serializer import serializer
from todos import models
# from django.contrib.auth import get_user_model


class TodoSerializer(serializer.ModelSerializer):
    class Meta:
        fields=(
            'id',
            'title',
            'description'
        )
        model=models.Todo