class PostsController < ApplicationController
  helper_method :posts

  def index
    @posts = posts.take(4)
  end

  def show
    @post = posts.find do |post|
      post.id == params[:id]
    end
  end

  private

  def posts
    @posts ||= Post.order('id DESC').all
  end
end
