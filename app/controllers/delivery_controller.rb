 class DeliveryController < ApplicationController
  def index
    @matching_deliveries = Delivery.where({:user_id => current_user.id})
    @pending = @matching_deliveries.where({:arrived => false })
    @recieved = @matching_deliveries.where({:arrived => true})
    render(:templates => 'delivery/index')
  end

  def show
    delivery_id = params.fetch("id")
    @deliveries = Delivery.where({:id => delivery_id})
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
