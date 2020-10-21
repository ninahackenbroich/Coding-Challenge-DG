class Lunchgroup < ApplicationRecord
  has_many :employees, through: :events
end
