class CreateDealCategoryships < ActiveRecord::Migration
  def self.up
    create_table :deal_categoryships do |t|
      t.integer :deal_id
      t.integer :category_id

      add_index :deal_categoryships, :deal_id
      add_index :deal_categoryships, :category_id
      t.timestamps
    end
  end

  def self.down
    drop_table :deal_categoryships
  end
end
