class CategoriesController < ApplicationController
  layout 'bootstrap'
  def index
    @abc = %w(Aa Bb Cc Dd Ee Ff Gg Hh Ii Jj Kk Ll Mm Nn Oo Pp Qq Rr Ss Tt Uu Vv Ww Xx Yy Zz)
    @category = 'active'
    @categories = Category.order('name').all
  end

  def deals
    @category = Category.find(params[:id])
    @deals = @category.deals
  end

end
