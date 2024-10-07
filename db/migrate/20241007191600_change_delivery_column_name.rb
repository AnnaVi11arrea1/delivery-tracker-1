class ChangeDeliveryColumnName < ActiveRecord::Migration[7.1]
  def change
    rename_column Delivery, :arrival_date, :supposed_to_arrive_on
  end
end
