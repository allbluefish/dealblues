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
end
