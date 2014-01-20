class CreateBlogs < ActiveRecord::Migration
  def change
    def change
      create_table :blogs do |t|
        t.string :blog_title
        t.text :blog_text

        t.timestamps
      end
    end
  end
end
