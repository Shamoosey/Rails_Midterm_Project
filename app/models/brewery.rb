# frozen_string_literal: true

class Brewery < ApplicationRecord
  validates :name, :address, :city, :country, :state, presence: true
end
