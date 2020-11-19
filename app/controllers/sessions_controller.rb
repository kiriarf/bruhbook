class SessionsController < ApplicationController
  skip_before_action :login_required, :only => [:login, :create]
  def login
    @user = User.new
  end

  def create
    @user = User.find_by_email(params[:email])

    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      render :login
    end

  end

  def destroy
    session.clear
    redirect_to login_path
  end
end
