class Group < ApplicationRecord
  has_many :employees, through: :events
end
