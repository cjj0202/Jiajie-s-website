class CreateTwitterSearches < ActiveRecord::Migration
  def change
    drop_table :twitter_searches
    create_table :twitter_searches do |t|
      t.string :search_text

      t.timestamps
    end
  end
end
