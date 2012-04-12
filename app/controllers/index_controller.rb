class IndexController < ApplicationController
  layout "bootstrap"
  def index
    @deals = Deal.paginate(:page => params[:page], :per_page => 10).order("pubDate desc").all
    @home = "active"
    @categories = Category.order("count desc").limit(10).all
    @stores = Store.order("id desc").limit(10).all
  end
end
