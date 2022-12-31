class User < ApplicationRecord
  has_many :flat
  has_many :booking
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
