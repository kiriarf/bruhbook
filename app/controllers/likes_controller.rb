class LikesController < ApplicationController
  before_action :find_post

  def create
    # return_to = request.referer
    @post.likes.create(user_id: current_user.id)
    redirect_to request.referer
    # redirect_to post_path(@post)
  end

  private
  def find_post
    @post = Post.find(params[:post_id])
  end

end
