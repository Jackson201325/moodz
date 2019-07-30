class PagesController < ApplicationController

  def home
    @subscriber = Subscriber.new
  end

  # def create
  #   @subscriber = Subscriber.new(set_subscriber_params)
  #   @subscriber.save
  #   SubscriptionMailer.send_email(@subscriber.email)
  # end

  private

  def set_subscriber_params
    params.require('subscriber').permit(:email, :purpose)
  end
  
end
