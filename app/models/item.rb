class Item < ActiveRecord::Base
  validates :question, :presence => true
  belongs_to :scale
end
