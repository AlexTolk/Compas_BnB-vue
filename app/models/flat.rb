# == Schema Information
#
# Table name: flats
#
#  id           :bigint           not null, primary key
#  address      :string
#  availability :date
#  avg_rating   :float
#  cancellation :text
#  city         :string
#  country      :string
#  description  :text
#  details      :text
#  ground_rules :text
#  name         :string
#  price        :float
#  state        :string
#  zipcode      :integer
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

#  address      :string
#  availability :date
#  avg_rating   :float
#  cancellation :text
#  city         :string
#  country      :string
#  description  :text
#  details      :text
#  ground_rules :text
#  name         :string
#  price        :float
#  state        :string
#  zipcode      :integer

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
  has_many_attached :photos
  acts_as_taggable_on :tags
  # What was the name for a picture? photo, image?
  AMENITIES = ["air condition","garage","beach access", "pool", "large tv", "spare bathroom", "central heating", "gas stove", "laundry machine", "dishwasher", "deck", "sunroom"]

end
