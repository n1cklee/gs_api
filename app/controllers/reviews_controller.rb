class ReviewsController < ApplicationController
	before_filter :authenticate_user!
	before_action :set_house
	before_action :set_review, :only => [:show, :edit, :update, :destroy]

	def index
	end

	def new
		@review = @house.reviews.build
	end

	def create
		@review = @house.reviews.build(review_params)
		@review.user = current_user
		if @review.save
			redirect_to [@house, @review], :notice => 'Review has been added.'
		else
			render action: 'new'
		end
	end

	def show
	end

	private
		def set_house
			@house = House.find(params[:house_id])
		end

		def review_params
			params.require(:review).permit(:notes)
		end

		def set_review
			@review = Review.find(params[:id])
		end
end
