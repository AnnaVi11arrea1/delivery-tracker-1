 class DeliveryController < ApplicationController
  def index
    render(:templates => 'delivery/index')
  end

  def show
    render(:templates => 'delivery/show')
  end

  def new
    delivery = Delivery.new
    delivery.user_id = params.fetch("id")
    delivery.arrival_date = params.fetch("arrival")
    delivery.description = params.fetch("description")
    delivery.details = params.fetch("details")
    delivery.created_at = Time.now
    delivery.updated_at = Time.now
    delivery.save
    redirect_to("/deliveries")
  end
end
