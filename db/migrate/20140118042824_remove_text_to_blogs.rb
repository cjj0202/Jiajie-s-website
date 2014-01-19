class RemoveTextToBlogs < ActiveRecord::Migration
  def change
    remove_column :blogs, :text, :text
  end
end
