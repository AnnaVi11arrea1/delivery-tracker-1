 class DeliveryController < ApplicationController
  def index
    render(:templates => 'delivery/index')
  end

  def show
    render(:templates => 'delivery/show')
  end

  def create
    delivery.description = params("description")
    delivery.arrival_date = params("arrival_date")
    delivery.details = params("details")
    delivery.save
    redirect_to delivery_path("/deliveries")
end
