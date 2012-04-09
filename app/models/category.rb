class Category < ActiveRecord::Base
  has_many :deal_categoryships
  has_many :deals, :through => :deal_categoryships
end
