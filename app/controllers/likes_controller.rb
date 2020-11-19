class LikesController < ApplicationController
  before_action :find_post

  def create
    @post.likes.create(user_id: current_user.id)
    redirect_to request.referer + "#post-#{@post.id}"
  end

  private
  def find_post
    @post = Post.find(params[:post_id])
  end

end
