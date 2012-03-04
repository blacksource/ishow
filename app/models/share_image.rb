class ShareImage < ActiveRecord::Base
	belongs_to :share

	attr_accessible :img_b, :img_s, :picture
	mount_uploader :picture, PictureUploader, :mount_on => :img_b
end
