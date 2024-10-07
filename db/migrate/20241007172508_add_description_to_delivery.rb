class AddDescriptionToDelivery < ActiveRecord::Migration[7.1]
  def change
    add_column :deliveries, :description, :string
  end
end
