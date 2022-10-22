from django import forms

class SignupForm(forms.Forms):
    username = forms.CharField(max_length=100,
                                widget=forms.TextInput(attrs={}))