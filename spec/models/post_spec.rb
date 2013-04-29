require 'spec_helper'

describe Post do
  let(:post) { Fabricate.build(:post) }

  it 'is valid' do
    post.should be_valid
  end
end
