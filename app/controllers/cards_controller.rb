class CardsController < ApplicationController

  def create
    stripe_token = params[:stripeToken]
    customer = Stripe::Customer.create(
      source: stripe_token
    )
    @user.update(stripe_customer_id: customer.id)
    render json: { message: "created" }
  end
end
