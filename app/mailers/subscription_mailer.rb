class SubscriptionMailer < ApplicationMailer

    def send_email(email)    
        mail(to: email, subject: 'Thanks for Signing Up!')
    end
end
