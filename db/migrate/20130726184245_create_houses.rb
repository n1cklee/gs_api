class CreateHouses < ActiveRecord::Migration
  def change
    create_table :houses do |t|
      t.string :country
      t.string :state
      t.string :city
      t.string :address1
      t.string :address2
      t.string :unit
      t.integer :zip

      t.timestamps
    end
  end
end
