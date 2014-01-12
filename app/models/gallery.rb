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
                    :s3_credentials => {#:bucket            => ENV['AWS_BUCKET'           ],
                                        :access_key_id     => ENV['AWS_ACCESS_KEY_ID'    ],
                                        :secret_access_key => ENV['AWS_SECRET_ACCESS_KEY']},
                    :s3_protocol    => "http",
                    :s3_host_name   => "s3-website-us-east-1.amazonaws.com"
end
