class PostsController < ApplicationController

  def index
    # @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    Post.create(post_params)
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    post = Post.find(params[:id])
    post.update(post_params)
  end

  def list
  end

  private
  def post_params
    params.require(:post).permit(:company, :site, :place, :phase, :date, :url, :hp, :others, :features).merge(user_id: current_user.id)
  end

end
