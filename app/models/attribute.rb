class Attribute < ActiveRecord::Base
  belongs_to :user
  belongs_to :house
  belongs_to :scale
  belongs_to :item
end
