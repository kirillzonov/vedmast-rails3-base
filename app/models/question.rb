class Question < ActiveRecord::Base
  paginates_per 3
  default_scope where(:visible => true)
  validates :name, :presence => true
  validates :content, :presence => true
  validates :email, :presence   => true,
                    :length     => { :within => 6..30 }

end
