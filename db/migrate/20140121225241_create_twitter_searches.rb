class CreateTwitterSearches < ActiveRecord::Migration
  def change
    create_table :twitter_searches do |t|
      t.string :search

      t.timestamps
    end
  end
end
