class Event < ApplicationRecord
  belongs_to :lunchgroup
  belongs_to :restaurant
  belongs_to :employee
end
