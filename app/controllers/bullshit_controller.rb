class BullshitController < ApplicationController
  before_action :find_post
  def create
    @post.bullshits.create(user_id: current_user.id)
    redirect_to post_path(@post)
  end
  private
  def find_post
    @post = Post.find(params[:post_id])
  end
end
