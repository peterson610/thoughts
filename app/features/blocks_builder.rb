class BlocksBuilder

  def self.blocks_of(kind)
    InfoBlock.where(kind: kind)
  end
end
