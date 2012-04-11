class IndexController < ApplicationController
  layout "bootstrap"
  def index
    @deals = Deal.paginate(:page => params[:page], :per_page => 5).order("pubDate desc").all
    @home = "active"
    p @deals.size
  end
end
