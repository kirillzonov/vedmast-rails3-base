class Article < ActiveRecord::Base
  belongs_to :category
  scope :recent, order("created_at desc").limit(5)
end
