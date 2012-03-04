require "fileutils" 
class SharesController < ApplicationController
	def new
		@share = Share.new
		# get product name
		@product = Product.find(params[:id])
	end

	def create
		share = Share.new(params[:share])
		if share.save
			root_path = "#{Rails.root.to_s}/public"
			pic_path = "#{root_path}/shares/#{share.product_id}/"
			unless File.exist?(pic_path)
				Dir.mkdir(pic_path)
			end
			params[:share_images].each do |i|
				t = Time.now
				ts = "#{t.strftime("%y%m%d%H%M%S")}#{t.usec}"
				pic_name_b = "#{ts}.png"
				pic_name_s = "#{ts}_s.png"
				FileUtils.move("#{root_path}/#{i[:img_b]}", "#{pic_path}#{pic_name_b}")
				FileUtils.move("#{root_path}/#{i[:img_s]}", "#{pic_path}#{pic_name_s}")
				share_image = ShareImage.new(i)
				share_image.picture= PictureUploader.new(:ur=>"aaaaaa")
				share_image.img_b = pic_name_b
				share_image.img_s = pic_name_s
				share_image.share_id = share.id

				logger.debug "=============#{share_image.picture.url}"
				share_image.save()
			end
		end

		redirect_to "/products/#{share.product_id}"
	end
end
