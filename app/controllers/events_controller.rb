class EventsController < ApplicationController

  def index
    @events = Event.all
    @restaurants = Restaurant.all
  end

  def shuffle
    all_groups = Array.new(@restaurants.length)
    
    units = Employee.all.group_by { |employee| employee.unit }

    units.values.each do |unit|
      unit.shuffle.each_with_index do |employee, i|
        all_groups[i] << employee
      end
    end
    Event.destroy_all
    all_groups.each_with_index do |group, i|
      group.each do | employee |
        Event.new(
          name: @restaurants.sample.name,
          employee: employee,
          lunchgroup: all_groups[i]
        )
      end
    end
  @events = Event.all
end
