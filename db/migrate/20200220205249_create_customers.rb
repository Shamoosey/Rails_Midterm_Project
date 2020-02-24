class CreateCustomers < ActiveRecord::Migration[6.0]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :address
      t.string :country
      t.string :state
      t.string :email
      t.references :beer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
