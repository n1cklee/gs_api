class RemoveUnitFromHouses < ActiveRecord::Migration
  def change
    remove_column :houses, :unit, :string
  end
end
