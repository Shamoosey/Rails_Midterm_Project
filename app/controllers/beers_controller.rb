# frozen_string_literal: true

class BeersController < ApplicationController
  def show
    @beer = Beer.find(params[:id])
  end

  def search
    @beers = Beer.where('category LIKE ?', "%#{params[:search_term]}%")
  end
end
