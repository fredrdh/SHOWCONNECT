class Event < ApplicationRecord
  belongs_to :user
  has_many :appointments
  has_one_attached :photo
end
