# frozen_string_literal: true

class Breweries < ApplicationRecord
  validates :name, :address, :city, :country, :state, presence: true
end
