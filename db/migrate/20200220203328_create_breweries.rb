class CreateBreweries < ActiveRecord::Migration[6.0]
  def change
    create_table :breweries do |t|
      t.string :name
      t.string :address
      t.string :country
      t.string :state
      t.string :website

      t.timestamps
    end
  end
end
