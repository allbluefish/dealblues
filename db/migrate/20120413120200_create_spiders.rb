class CreateSpiders < ActiveRecord::Migration
  def self.up
    create_table :spiders do |t|
      t.string :site
      t.string :rss_url
      t.integer :today_count
      t.integer :all_count
      t.integer :status
      t.string :type
      t.timestamps
    end
  end

  def self.down
    drop_table :spiders
  end
end
