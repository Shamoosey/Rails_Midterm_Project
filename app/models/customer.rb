# frozen_string_literal: true

class Customer < ApplicationRecord
  belongs_to :beer
  validates :name, :address, :country, :city, :state, presence: true
  validates :email, uniqueness: true
end
