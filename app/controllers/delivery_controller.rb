 class DeliveryController < ApplicationController
  def index
    @matching_deliveries = Delivery.where({:user_id => current_user.id})
    @pending = @matching_deliveries.where({:arrived => false })
    @received = @matching_deliveries.where({:arrived => true})
    render(:templates => 'delivery/index')
  end

  def show
    delivery_id = params.fetch("id")
    @deliveries = Delivery.where({:id => delivery_id})
    render(:templates => 'delivery/show')
  end

  def create
    delivery = Delivery.new
    delivery.supposed_to_arrive_on = params.fetch("supposed_to_arrive_on")
    delivery.description = params.fetch("description")
    delivery.details = params.fetch("details")
    delivery.created_at = Time.now
    delivery.updated_at = Time.now
    delivery.user_id = current_user.id
    delivery.arrived = false

    if delivery.valid?
      delivery.save
      redirect_to("/deliveries", { :notice => "Added to list." })
    else
      redirect_to("/deliveries", { :alert => "Failed to add to list" })
    end
  end

  def update
    delivery_id = params.fetch("id")
    delivery = Delivery.where({:id => delivery_id}).at(0)
    delivery.arrived = true
    delivery.save
    redirect_to("/deliveries", { notice: "Delivery updated successfully"})
  end

  def delete
    delivery_id = params.fetch("id")
    delivery = Delivery.where(:id => delivery_id).at(0)
    delivery.destroy
    redirect_to("/deliveries", { notice: "Delivery deleted successfully"})  
    
  end
end
