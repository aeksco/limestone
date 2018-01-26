# config/initializers/stripe.rb
Rails.configuration.stripe = {
  :publishable_key => ENV['STRIPE_PUBLISHABLE_KEY'],
  :secret_key      => ENV['STRIPE_API_KEY']
}

Stripe.api_key = ENV['STRIPE_API_KEY']
Stripe.api_version = '2017-08-15'

class RecordCharges
  def call(event)
    charge = event.data.object

    # Look up the user in our database
    user = User.find_by(stripe_id: charge.customer)

    # Record a charge in our database
    c = user.charges.where(stripe_id: charge.id).first_or_create
    c.update(
      amount: charge.amount,
      card_last4: charge.source.last4,
      card_type: charge.source.brand,
      card_exp_month: charge.source.exp_month,
      card_exp_year: charge.source.exp_year
    )
  end
end

StripeEvent.configure do |events|
  events.subscribe 'charge.succeed', RecordCharges.new
end
