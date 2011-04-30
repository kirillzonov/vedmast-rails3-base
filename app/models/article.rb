class Article < ActiveRecord::Base
  paginates_per 5
  belongs_to :category
  scope :recent, order("created_at desc").limit(5)
end
