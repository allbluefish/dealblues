class Deal < ActiveRecord::Base
  belongs_to :store
  has_many :deal_categoryships
  has_many :categories, :through => :deal_categoryships
end
