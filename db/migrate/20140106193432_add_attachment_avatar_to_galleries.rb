class AddAttachmentAvatarToGalleries < ActiveRecord::Migration
  def self.up
    add_attachment :galleries, :file
  end

  def self.down
    remove_attachment :galleries, :file
  end
end
