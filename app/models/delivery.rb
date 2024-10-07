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
  belongs_to :user
  # validates :arrived, presence: true
  validates :description, presence: true
  validates :details, presence: true
  validates :supposed_to_arrive_on, presence: true

  def user
  user_id = self.user_id
  the_user = Delivery.where(:user_id => user.id)
  end

end
