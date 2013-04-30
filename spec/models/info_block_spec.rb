require 'spec_helper'

describe InfoBlock do
  let(:block) { Fabricate.build(:info_block, kind: 'geek') }

  describe 'validations' do

    it 'is valid' do
      block.should be_valid
    end

    it 'is not valid without a title' do
      block.title = nil
      block.should_not be_valid
    end

    it 'is not valid without a body' do
      block.body = nil
      block.should_not be_valid
    end

    it 'is not valid without a kind' do
      block.kind = nil
      block.should_not be_valid
    end
  end
end
