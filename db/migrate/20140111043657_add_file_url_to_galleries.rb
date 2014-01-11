class AddFileUrlToGalleries < ActiveRecord::Migration
  def change
    add_column :galleries, :file_url, :string
  end
end
