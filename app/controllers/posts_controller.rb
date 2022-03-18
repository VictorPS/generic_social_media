class PostsController < ApplicationController
  before_action :authenticate_user!

  def new
    @post = Post.new
  end

  def create
    @post = current_user.posts.create!(post_params)

    respond_to do |format|
      format.turbo_stream
      format.html
    end
  end

  private

  def post_params
    params.require(:post).permit(
      :message
    )
  end
end
