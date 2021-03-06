class Gallery < ActiveRecord::Base
  attr_accessible :file_name, :file, :file_url
  validates_presence_of :file_name, :file

  has_attached_file :file,
                    :styles => { :medium => "300x300>",
                                 :square => "200x200>",
                                 :thumb => "100x100>" },
                    :command_path => 'C:\Program Files\ImageMagick-6.8.8-Q16',
                    :storage => :s3,
                    :bucket => "jiajie_website",
                    :s3_credentials => "#{Rails.root}/config/s3.yml",
                    :s3_protocol    => "http"
                    #:s3_host_name   => "s3-website-us-east-1.amazonaws.com"
end
