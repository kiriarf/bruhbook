class SessionsController < ApplicationController
  def new
    @user = User.new
    render :login
  end

  def create

  end

  def destroy

  end
end
