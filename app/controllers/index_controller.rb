class IndexController < ApplicationController
  layout "bootstrap"
  def index
    @deals = Deal.paginate(:page => params[:page], :per_page => 10).order("pubDate desc").all
    @categories = Category.order("count desc").limit(10).all
    @stores = Store.order("count desc").limit(10).all

    @home = "active"

  end
end
