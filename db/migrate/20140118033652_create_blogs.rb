class CreateBlogs < ActiveRecord::Migration
  def change
    add_column :blogs, :blog_title, :string
	add_column :blogs, :blog_text, :text
  end
end
