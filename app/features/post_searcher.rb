class PostSearcher
  include Enumerable

  def self.latest_posts
    Post.order('id DESC').take(4)
  end

  def self.get_post
    Post.find(params[:id])
  end
end
