class CreateScales < ActiveRecord::Migration
  def change
    create_table :scales do |t|
      t.string :description
      t.references :user, index: true

      t.timestamps
    end
  end
end
