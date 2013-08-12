class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :question
      t.string :type
      t.references :scale, index: true

      t.timestamps
    end
  end
end
