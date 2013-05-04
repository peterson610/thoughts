class BlocksBuilder

  # Public: A block of posts with the same kind.
  #
  # Returns a collection of Posts.
  def self.blocks_of(kind)
    Post.where(kind: kind)
  end
end
