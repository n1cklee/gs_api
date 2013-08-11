class HousesController < ApplicationController
	before_filter :authenticate_user!
	before_action :set_house, only: [:show, :edit, :update, :destroy]
	before_action :set_reviews, only: :show

	def index
		@houses = House.all
	end

	def new
		@house = House.new
	end

	def show
	end

	def edit
	end

	def create
		@house = House.new(house_params)
		if @house.save
			redirect_to @house, notice: 'House was successfully added'
		else
			render action: 'new'
		end
	end

	def update
		if @house.update(house_params)
			redirect_to @house, notice: 'House was successfully updated'
		else
			render action: 'edit'
		end
	end

	def destroy
		@house.destroy
		redirect_to houses_url
	end

	private
		def set_house
			@house = House.find(params[:id])
		end

		def house_params
			params.require(:house).permit(:address1, :address2, :city, :state, :zip, :country)
		end

		def set_reviews
			@reviews = Review.where(house: @house)
		rescue ActiveRecord::RecordNotFound
			flash[:notice] = "No reviews have been written for this apartment."	
		end
end
