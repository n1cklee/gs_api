class CreateAttributes < ActiveRecord::Migration
  def change
    create_table :attributes do |t|
      t.string :value
      t.references :user, index: true
      t.references :house, index: true
      t.references :scale, index: true
      t.references :item, index: true

      t.timestamps
    end
  end
end
