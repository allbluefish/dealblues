class IndexController < ApplicationController
  def index
    @deals = Deal.order("pubDate desc").all
  end
end
