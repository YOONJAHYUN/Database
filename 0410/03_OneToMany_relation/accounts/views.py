from django.shortcuts import render, redirect
from django.contrib.auth.forms import UserCreationForm, AuthenticationForm
from .forms import CustomUserCreationForm

# Create your views here.
def signup(request):
    form = CustomUserCreationForm
    # 회원가입을 위해 작성해야 하는 form은?
    context = {

        'form':form
    }
    return render(request, 'accounts/sign.html', context)

def login(request):
    if request.method=='POST':
        form = AuthenticationForm(request, data=request.POST)
        if form.is_valid():
            form.save()
            return redirect('articles:index')
        
    else:
        form = AuthenticationForm()
    context = {
        'form': form
    }

    return render(request, 'accounts/login.html', context)



