from users.models import User
from rest_framework import serializers
from chats.models import Message


# User Serializer
class MessageSerializer(serializers.ModelSerializer) :
    """ For Serializing User """
    sender = serializers.SlugRelatedField(many=False, slug_field='username', queryset=User.objects.all())
    receiver = serializers.SlugRelatedField(many=False, slug_field='username', queryset=User.objects.all())
    
    class Meta:
        model = Message
        fields = ['sender', 'receiver', 'message', 'timestamp']
        