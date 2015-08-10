class ManufactuerController < ApplicationController
  # I don't know if the intent was for only get requests. But i think you should
  # include Create Update Delete functionality even if you don't want it accessible.
  # You could put an admin only effect on it.
  def index
    @manufactuer = Manufactuer.all
  end

  def show
    @manufactuer = Manufactuer.find(params[:id])
    @aircrafts = @manufactuer.aircrafts

  end
end
