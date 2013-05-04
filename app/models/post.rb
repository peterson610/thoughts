class Post < ActiveRecord::Base
  validates :title, :kind, :teaser, :body, presence: true
end
