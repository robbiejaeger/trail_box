class HikesController < ApplicationController

  def index
    @location = Location.find(params[:location_id])
    @hikes = @location.hikes
  end

  def show
    @hike = Hike.find(params[:id])
    @location = @hike.location
  end
end
