# == Schema Information
#
# Table name: flats
#
#  id           :bigint           not null, primary key
#  availability :date
#  avg_rating   :float
#  description  :text
#  details      :text
#  name         :string
#  price        :float
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  user_id      :bigint           not null
#
# Indexes
#
#  index_flats_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
class Flat < ApplicationRecord
  belongs_to :user
  has_many :booking
end
