class InfoBlock < ActiveRecord::Base
  validates :title, :body, :kind, presence: true
end
