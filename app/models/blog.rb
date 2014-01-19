class Blog < ActiveRecord::Base
  attr_accessible :blog_title, :blog_text
  validates :blog_title, presence: true
end
