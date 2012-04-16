class Category < ActiveRecord::Base
  has_many :deal_categoryships
  has_many :deals, :through => :deal_categoryships

  def start_with(char)
    name.first.rindex(char.first) == 0 || name.first.rindex(char.last) == 0
  end
end
