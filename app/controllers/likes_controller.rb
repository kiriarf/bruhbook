class LikesController < ApplicationController
  before_action :find_post
  before_action :find_like, only: [:destroy]

  def create
    if !already_liked?
      @post.likes.create(user_id: current_user.id)
      redirect_to request.referer + "#post-#{@post.id}"
    end
  end


  private
  def find_post
    @post = Post.find(params[:post_id])
  end

  def already_liked?
    Like.where(user_id: current_user.id, post_id: params[:post_id]).exists?
  end

end
