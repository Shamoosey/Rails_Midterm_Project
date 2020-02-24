# frozen_string_literal: true

class AddAddressToBrewery < ActiveRecord::Migration[6.0]
  def change
    add_column :breweries, :address, :string
  end
end
