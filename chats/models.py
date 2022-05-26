from django.db import models
from users.models import User
# Create your models here.

class Message(models.Model) :
    sender = models.ForeignKey(User, on_delete=models.CASCADE, related_name='sender')
    receiver = models.ForeignKey(User, on_delete=models.CASCADE, related_name='receiver')
    message = models.CharField(max_length=1200)
    timestamp = models.DateTimeField(auto_now_add=True)
    is_read = models.BooleanField(default = False)
    
    def __str__(self) :
        return self.message
    
    class Meta:
        ordering = ('timestamp',) 
        
        
class ChatbotData(models.Model):
    idx = models.IntegerField(primary_key=True)
    questions = models.CharField(max_length=255, null=False)
    answers_ko = models.CharField(max_length=255, null=False)
    labels = models.IntegerField()
    answers_en = models.CharField(max_length=255, null=False)

    def __str__(self):
        return self.questions 
# Create your models here.
