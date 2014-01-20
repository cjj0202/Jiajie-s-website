class Comment < ActiveRecord::Base
  belongs_to :blog
  attr_accessible :commenter, :comment_body
end
