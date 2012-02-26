class SharesController < ApplicationController
	def new
		@share = Share.new
		# get product name
		@product = Product.find(params[:id])
	end
end
