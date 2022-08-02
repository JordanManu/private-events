class Enrollment < ApplicationRecord
  belongs_to :event
  belongs_to :user
  belongs_to :host, class_name: "User"
  belongs_to :invitee, class_name: "User"
end
