class AddReviewRefToAttributes < ActiveRecord::Migration
  def change
    add_reference :attributes, :review, index: true
  end
end
