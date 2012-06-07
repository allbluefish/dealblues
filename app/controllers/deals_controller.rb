class DealsController < ApplicationController
  layout "bootstrap"

  def today
    today = Time.now.strftime("%Y-%m-%d %H:%M")

  end

  def index
    @deals = Deal.paginate(:page => params[:page], :per_page => 10).order("pubDate desc").all
    @categories = Category.order("count desc").limit(10).all
    @stores = Store.order("id desc").limit(10).all
    @all = 'active'
  end

  def hot
    @deals = Deal.paginate(:page => params[:page], :per_page => 10).order("pubDate desc").all
    @categories = Category.order("count desc").limit(10).all
    @stores = Store.order("id desc").limit(10).all
    @hot = 'active'
  end

  def show
    @deal = Deal.find(params[:id])
    @store = @deal.store
    @category = @deal.categories.first
    @categories = Category.order("count desc").limit(10).all
    @stores = Store.order("id desc").limit(10).all
    render :layout => "bootstrap_no_bar"
  end

end
