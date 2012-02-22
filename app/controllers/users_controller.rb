class UsersController < ApplicationController
	layout 'blank', :only => [:login, :register]

  def login
  	if request.get?
  		@user = User.new
  	else
  		@user = User.new(params[:user])
  		user = @user.authenticate
  		if user
  			redirect_to "/"
  		else
  			flash[:notice] = "邮箱或密码不正确"
  		end
  	end
  end

  def register
  end

end
