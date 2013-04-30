class InfoBlocksController < ApplicationController
  helper_method :blocks

  private

  def blocks(kind)
    BlocksBuilder.blocks_of(kind)
  end
end
