class House < ActiveRecord::Base
	validates :address1, :city, :state, :country, :presence => true
	validates :zip, :numericality => true
	has_many :reviews
end
