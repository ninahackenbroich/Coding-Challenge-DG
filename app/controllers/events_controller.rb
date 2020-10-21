class EventsController < ApplicationController

  def index
    @events = Event.all
    @restaurants = Restaurant.all
  end

  def new
    restaurants = Restaurant.all
    all_groups = Array.new(restaurants.size)
    
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
          employee: employee,
          group: group[i]
        )
      end
    end
    @events = Event.all
  end
end
