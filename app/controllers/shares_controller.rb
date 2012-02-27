class SharesController < ApplicationController
	def new
		@share = Share.new
		# get product name
		@product = Product.find(params[:id])
	end

	def create
		share = Share.new(params[:share])
		if share.save
			params[:share_images].each do |i|
				share_image = ShareImage.new(i)
				share_image.share_id = share.id
				share_image.save()
			end
		end
		# if share.share_images
		# 	logger.debug '====share_images is not null'
		# else
		# 	logger.debug '====share_images is null'
		# end
		# logger.debug "img_b=====" + aa[0][:img_b]

		redirect_to "/"
	end
end
