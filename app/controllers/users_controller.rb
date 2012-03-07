class UsersController < ApplicationController
	layout 'blank', :only => [:login, :register]

  def register
    @user = User.new
  end

  def create

  end

  def login
  	if session[:current_user]
        redirect_to "/"
    end

    if request.get?
  		@user = User.new
  	else
  		@user = User.new(params[:user])
  		user = @user.authenticate
  		if user
        session[:current_user] = user
  			redirect_to "/"
  		else
  			flash[:notice] = "邮箱或密码不正确"
  		end
  	end
  end

  def logout
    session[:current_user] = nil
    redirect_to "/login"
  end

end
