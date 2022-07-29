class Enrollment < ApplicationRecord
  belongs_to :event
  belongs_to :user
  belongs_to :creator, class_name: "User"
  belongs_to :invitee, class_name: "User"
end
