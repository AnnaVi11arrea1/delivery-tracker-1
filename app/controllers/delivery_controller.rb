 class DeliveryController < ApplicationController
  def index
    render(:templates => 'delivery/index')
  end

  def show
    render(:templates => 'delivery/show')
  end
end
