# == Schema Information
#
# Table name: deliveries
#
#  id           :bigint           not null, primary key
#  arrival_date :date
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  user_id      :integer
#
class Delivery < ApplicationRecord
  def user
  user_id = self.user_id
  the_user = Delivery.where(:user_id = user_id)
  end
end
