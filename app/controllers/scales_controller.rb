class ScalesController < ApplicationController
	before_filter :authenticate_user!
	before_action :set_scale, only: [:show, :edit, :update, :destroy]
	# before_action :set_reviews, only: :show

	def index
		@scales = Scale.all
	end

	def new
		@scale = Scale.new
	end

	def show
	end

	def edit
	end

	def create
		@scale = Scale.new(scale_params)
		@scale.user = current_user
		if @scale.save
			redirect_to @scale, notice: 'Scale was successfully added'
		else
			render action: 'new'
		end
	end

	def update
		if @scale.update(scale_params)
			redirect_to @scale, notice: 'Scale was successfully updated'
		else
			render action: 'edit'
		end
	end

	def destroy
		@scale.destroy
		redirect_to scales_url
	end

	private
		def set_scale
			@scale = Scale.find(params[:id])
		end

		def scale_params
			params.require(:scale).permit(:description,:name)
		end
end
