class BreweriesController < ApplicationController
  def index
    @breweries = Brewery.order(:name)
  end

  def show
    @brewery = Brewery.find(params[:id])
  end
end
