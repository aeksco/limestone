class SubscriptionsController < ApplicationController
  before_action :authenticate_user!

  # NOTE This isn't a controller for a typical model. Subscriptions live in Stripe.
  # We use the columns on the user to know a users current subscription status.

  # GET '/billing'
  def show
    redirect_to subscribe_path unless current_user_subscribed?
  end

  # GET '/subscribe'
  def new
  end

  # POST /subscriptions
  def create
    @@subscription_service = SubscriptionService.new(current_user, params)
    if @@subscription_service.create_subscription
      redirect_to billing_path, flash: { success: 'Yay! Thanks for subscribing!' }
    else
      redirect_to subscribe_path, flash: { error: 'There was an error creating your subscription :(' }
    end
  end
end
