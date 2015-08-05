class ManufactuerController < ApplicationController
  def index
    @manufactuer = Manufactuer.all
  end

  def show
    @manufactuer = Manufactuer.find(params[:id])
    @aircrafts = @manufactuer.aircrafts
  end
end
