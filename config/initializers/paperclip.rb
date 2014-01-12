# config/initializers/paperclip.rb
#Paperclip::Attachment.default_options[:url] = ':s3_domain_url'
#Paperclip::Attachment.default_options[:path] = '/:class/:attachment/:id_partition/:style/:filename'

# config/initializers/paperclip.rb
#Paperclip::Attachment.default_options[:s3_host_name] = 'jiajie_website.s3-website-us-east-1.amazonaws.com'

S3_CREDENTIALS = {
    access_key_id: ENV['AWS_ACCESS_KEY_ID'],
    secret_access_key: ENV['AWS_SECRET_ACCESS_KEY'],
    bucket: ENV['AWS_ASSETS_BUCKET']
}