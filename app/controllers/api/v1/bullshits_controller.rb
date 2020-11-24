class Api::V1::BullshitsController < ApplicationController
  before_action :find_post

  def create
    if !already_bullshited?
      @post.bullshits.create(user_id: current_user.id)
      redirect_to request.referer + "#post-#{@post.id}"
    end
  end
  
  private
  def find_post
    @post = Post.find(params[:post_id])
  end

  def already_bullshited?
    Bullshit.where(user_id: current_user.id, post_id: params[:post_id]).exists?
  end
end