class CreateGalleries < ActiveRecord::Migration
  def change
    create_table :galleries do |t|
      t.string :file_file_name
      t.timestamps
    end
  end
end
