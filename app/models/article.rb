class Article < ActiveRecord::Base
  belongs_to :category
  has_and_belongs_to_many :orders, :join_table => "articles_orders", :association_foreign_key => 'order_id'
  paginates_per 5
  scope :recent, order("created_at desc").limit(5)
end