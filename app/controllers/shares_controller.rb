class SharesController < ApplicationController
	def new
		@share = Share.new
	end
end
