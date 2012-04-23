class Store < ActiveRecord::Base
  has_many :deals

  def start_with(char)
    name.start_with?(char.first,char.last)
  end

end
