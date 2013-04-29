class PostsController < ApplicationController
  helper_method :posts, :post

  private

  def post
    @post ||= PostSearcher.get_post
  end

  def posts
    @posts ||= PostSearcher.latest_posts
  end
end
