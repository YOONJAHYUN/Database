from django.db import models
from django.contrib.auth.models import AbstractUser

# Create your models here.
class User(AbstractUser):
    # 특별히 새로운 필드가 필요한게 아니므로 pass로 넘김
    pass
