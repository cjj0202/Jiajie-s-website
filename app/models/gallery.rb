class Gallery < ActiveRecord::Base
  attr_accessible :file_name, :file
  validates_presence_of :file_name, :file

  has_attached_file :file,
                    :styles => { :medium => "300x300>",
                                 :thumb => "100x100>" },
                    :command_path => 'C:\Program Files\ImageMagick-6.8.8-Q16'

end
