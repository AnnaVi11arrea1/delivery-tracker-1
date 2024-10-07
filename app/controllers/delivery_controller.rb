 class DeliveryController < ApplicationController
  def index
    render(:templates => 'delivery/index')
  end

  def show
    render(:templates => 'delivery/show')
  end

  def create
    delivery = Delivery.new
    delivery.description = params.fetch("description")
    delivery.arrival_date = params.fetch("arrival_date")
    delivery.details = params.fetch("details")
    delivery.save
    redirect_to("/deliveries")
  end
end
