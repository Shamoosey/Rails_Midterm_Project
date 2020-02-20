# frozen_string_literal: true

class ChangeAddressToCity < ActiveRecord::Migration[6.0]
  def change
    rename_column :breweries, :address, :city
  end
end
