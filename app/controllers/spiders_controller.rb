class SpidersController < ApplicationController
  layout "admin"

  def index
    @spiders = Spider.all
  end

  def clutch
    spider = Spider.find(params[:id])

    spider.clutch
    #deal = Deal.find(58)
    #p deal.categories.size
  end

  def new

  end

  def show
    @spider = Spider.find(params[:id])
  end

  def create
    this_type = params[:this_type]
    @spider = DealTaker.new(params[:spider]) if this_type == '1'

    respond_to do |format|
      if @spider.save
        format.html { redirect_to(:action => "show", :id => @spider.id, :notice => 'Store was successfully created.') }
      end
    end

  end

end