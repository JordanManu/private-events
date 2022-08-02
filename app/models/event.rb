class Event < ApplicationRecord

  belongs_to :host, class_name: "User", foreign_key: 'user_id'
  has_many :enrollments
  has_many :attendee, through: :enrollments, source: :user
  
end
