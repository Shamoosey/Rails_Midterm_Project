# frozen_string_literal: true

class AddAbv < ActiveRecord::Migration[6.0]
  def change
    add_column :beers, :abv, :float
  end
end
