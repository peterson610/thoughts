class PostSearcher
  include Enumerable

  def self.latest_posts
    Post.order('id DESC')
  end

  def self.get_post(id)
    Post.find(id)
  end
end
