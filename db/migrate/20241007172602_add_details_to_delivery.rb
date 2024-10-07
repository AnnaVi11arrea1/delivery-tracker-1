class AddDetailsToDelivery < ActiveRecord::Migration[7.1]
  def change
    add_column :deliveries, :details, :string
  end
end
