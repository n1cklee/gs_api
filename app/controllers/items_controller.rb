class ItemsController < ApplicationController
	before_filter :authenticate_user!
	before_action :set_scale
	before_action :set_item, :only => [:show, :edit, :update, :destroy]

	def index
	end

	def new
		@item = @scale.items.build
	end

	def create
		@item = @scale.items.build(item_params)
		if @item.save
			redirect_to [@scale, @item], :notice => 'Item has been added.'
		else
			render action: 'new'
		end
	end

	def show
	end

	private
		def set_scale
			@scale = Scale.find(params[:scale_id])
		end

		def item_params
			params.require(:item).permit(:question, :type)
		end

		def set_item
			@item = Item.find(params[:id])
		end
end
