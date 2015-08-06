class WatchlistsController < ApplicationController

  before_action :authenticate_user!

  def watch
    # watchlist_params = params.require(:watchlist).permit(:aircraft_id, :serial_number)
    # @watched = Watchlist.create(watchlist_params)
    # redirect_to @watched


    aircraft = Aircraft.find(params[:aircraft_id])
    current_user.watchlists.create(aircraft: aircraft)


    redirect_to  myaircrafts_path
   end
end
