from django.conf import settings
from twilio.rest import Client
import random

class MessageHandler:
    phone_number = None
    otp = None
    def __init__(self,phone_number,otp)->None:
        self.phone_number = phone_number
        self.otp = otp

    def sent_otp_on_phone(self):
        client=Client(settings.ACCOUNT_SID,settings.AUTH_TOKEN)
        verification = client.verify.services(
    'VA29a4d611a341913b3a967202769fe894'
).verifications.create(to=self.phone_number, channel='sms')

        verification_check = client.verify.services(
                'VA29a4d611a341913b3a967202769fe894'
                    ).verification_checks.create(to=self.phone_number, code=self.otp)
        print(verification_check.status)
    