class Share < ActiveRecord::Base
	has_many :share_images
	belongs_to :product
end
