require 'spec_helper'

describe Post do
  let(:post) { Fabricate.build(:post) }

  describe 'validations' do

    it 'is valid' do
      post.should be_valid
    end

    it 'is not valid without a title' do
      post.title = nil
      post.should_not be_valid
    end

    it 'is not valid without a teaser' do
      post.teaser = nil
      post.should_not be_valid
    end

    it 'is not valid without a body' do
      post.body = nil
      post.should_not be_valid
    end

    it 'is not valid without a kind' do
      post.kind = nil
      post.should_not be_valid
    end
  end
end
