class PostsController < ApplicationController
  def index
    @posts = Post.published
  end

  def show
    @post = Post.friendly.find(params[:id])
    @posts = Post.published.where.not(id: @post.id)
  end
end
