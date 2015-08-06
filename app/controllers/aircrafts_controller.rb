class AircraftsController < ApplicationController
  def show
    @aircraft = Aircraft.find(params[:id])



    # @watched = Watchlist.find_by(aircraft_id: params[:aircraft_id])
    # if !@watched
    #   @watched = Watchlist.new(aircraft_id: @aircraft.id, serial_number: @aircraft.serial_number)
    # end

    @watched = false
    if !current_user.nil? && !current_user.aircrafts.nil?
      @watched = current_user.aircrafts.include?(@aircraft)
    end
  end

  def list
    if !current_user.nil?

      #binding.pry
      @aircrafts = current_user.aircrafts
    #  binding.pry
    end
  end



end
