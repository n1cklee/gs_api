class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.references :user, index: true
      t.references :house, index: true
      t.text :notes

      t.timestamps
    end
  end
end
