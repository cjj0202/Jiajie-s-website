class Blog < ActiveRecord::Base
  has_many :comments, dependent: :destroy
  attr_accessible :blog_title, :blog_text
  validates :blog_title, presence: true
end
