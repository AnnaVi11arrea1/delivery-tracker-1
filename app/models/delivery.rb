# == Schema Information
#
# Table name: deliveries
#
#  id                    :bigint           not null, primary key
#  arrived               :boolean
#  description           :string
#  details               :string
#  supposed_to_arrive_on :date
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#  user_id               :integer
#
class Delivery < ApplicationRecord
  # def user
  # user_id = self.user_id
  # the_user = Delivery.where(:user_id => user.id)
  # end

  # def arrival
  #   arrival_date = self.arrival_date
  #   arrival_date.strftime("%b %e, %Y")
  # end
end
