class CreateDeals < ActiveRecord::Migration
  def self.up
    create_table :deals do |t|
      t.string :title
      t.string :link
      t.date :pubDate
      t.text :description
      t.text :description_pure
      t.string :source
      t.string :location
      t.string :image
      t.integer :store_id

      t.timestamps
    end

    add_index :deals, :store_id
  end

  def self.down
    drop_table :deals
  end
end
