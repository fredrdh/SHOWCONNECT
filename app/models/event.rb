class Event < ApplicationRecord
  belongs_to :user
  has_many :appointments, dependent: :destroy
  has_one_attached :photo
end
