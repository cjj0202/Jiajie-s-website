class Gallery < ActiveRecord::Base
  attr_accessible :file_name, :file
  validates_presence_of :file_name, :file

  has_attached_file :file
end
