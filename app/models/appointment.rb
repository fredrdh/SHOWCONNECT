class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :event
  # validates :timeslot, presence: true
  # validates :timeslot, uniqueness: { scope: :event_id }
  attr_accessor :title, :start, :end, :url
  attr_accessor :start_time, :end_time
  attr_accessor :description, :location, :price
  attr_accessor :category, :specialty, :stage_name
  attr_accessor :event_date
  attr_accessor :user_id, :event_id
  attr_accessor :cpf
  attr_accessor :email
  attr_accessor :password
  attr_accessor :name
  attr_accessor :local
  attr_accessor :event_id
  attr_accessor :event_date
  attr_accessor :price
  attr_accessor :timeslot
  attr_accessor
end
