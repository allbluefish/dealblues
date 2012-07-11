class AddVisitCountToDeals < ActiveRecord::Migration
  def self.up
    add_column :deals, :visit_count, :integer
  end

  def self.down
  end
end
