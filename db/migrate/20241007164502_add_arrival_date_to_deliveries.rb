class AddArrivalDateToDeliveries < ActiveRecord::Migration[7.1]
  def change
    add_column :deliveries, :arrival_date, :date
  end
end
