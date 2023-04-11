# 장고는 기본적으로 회원가입 기능을 이미 만들어서 제공하고 있다.
# admin page에서 이미 쓰고 있다.
# UserCreationForm은 장고가 이미 가지고 있다.
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth import get_user_model

class CustomUserCreationForm(UserCreationForm):

    class Meta(UserCreation.Meat):

        class Meta(UserCreationForm.Meta):
            model = get_user_model()