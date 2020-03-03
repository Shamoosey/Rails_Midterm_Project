# frozen_string_literal: true

class BreweriesController < ApplicationController
  def index
    @breweries = Brewery.order(:name)
  end

  def show
    @brewery = Brewery.find(params[:id])
    @brewerybeers = Beer.where(brewery_id: params[:id]).select(:name, :category, :id).order(:category)
  end
end
