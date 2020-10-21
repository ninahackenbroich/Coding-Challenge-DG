class LunchgroupsController < ApplicationController
  def index
    @lunchgroups = Lunchgroup.all
  end
end
