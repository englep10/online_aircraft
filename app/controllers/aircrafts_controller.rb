class AircraftsController < ApplicationController
  def show
    @aircraft = Aircraft.find(params[:id])
  end
end
