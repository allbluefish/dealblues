class DealCategoryship < ActiveRecord::Base
  self.primary_keys :deal_id, :category_id, foreign_key => [:deal_id, :category_id]
  belongs_to :deal
  belongs_to :category
end
