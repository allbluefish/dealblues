# encoding: UTF-8

class DealsController < ApplicationController
  layout "bootstrap"


  def today
    @categories = Category.order("count desc").limit(10).all
    @stores = Store.order("count desc").limit(10).all
    today = Time.now.strftime('%Y-%m-%d')
    @deals = Deal.paginate(:page => params[:page], :per_page => 10).where("pubDate > '#{today}'").order("pubDate desc").all
    @today = 'active'
  end

  def index
    @deals = Deal.paginate(:page => params[:page], :per_page => 10).order("pubDate desc").all
    @categories = Category.order("count desc").limit(10).all
    @stores = Store.order("count desc").limit(10).all
    @all = 'active'
  end

  def hot
    @deals = Deal.paginate(:page => params[:page], :per_page => 10).order("visit_count desc").all
    @categories = Category.order("count desc").limit(10).all
    @stores = Store.order("count desc").limit(10).all
    @hot = 'active'
  end

  def show


    @deal = Deal.find(params[:id])
    @store = @deal.store

    pub_date = 'Sun, 29 Jul 2012 01:14:03 -0400'
    d1 = p Time.parse(pub_date, '%Y-%m-%d %H:%M:%S')

    p @deal.pubDate

    p d1 - @deal.pubDate


    count = $application[params[:id]]
    if count.nil?
      count = 0
    end
    $application[params[:id]] = count+1

    #取出总数最多的5中分类
    @categories = @deal.categories.order("count desc").limit(5).all

    @category = @categories.first

    @hot_categories = Category.order("count desc").limit(10).all
    @hot_stores = Store.order("count desc").limit(10).all

    @store_deals = @store.deals.where("id!=#{@deal.id}").order("pubDate desc").limit(15).all

    @categories_deals = {}
    @categories.each do |c|
      category_deal = c.deals.where("deal_id!=#{@deal.id}").order("pubDate desc").limit(15).all
      @categories_deals[c] = category_deal
    end


    render :layout => "bootstrap_no_bar"
  end

  def search
    @key_word = params[:key_word]
    @deals = Deal.paginate(:page => params[:page], :per_page => 10).
        where("description_pure like '%#{@key_word}%'").order("pubDate desc").all
    @hot_categories = Category.order("count desc").limit(10).all
    @hot_stores = Store.order("count desc").limit(10).all
    render :layout => "bootstrap_no_bar"
  end

end
