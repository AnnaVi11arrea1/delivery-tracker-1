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
end
