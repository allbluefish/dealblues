require 'rufus/scheduler'

scheduler = Rufus::Scheduler.start_new

#scheduler.every '20m' do
#  respond_to "order ristretto"
#end

#spider = Spider.new

scheduler.every '5s' do
  spiders = Spider.all
  spiders.each { |s|
    p "the site #{s.site} spider date at #{Time.now.strftime("%Y-%m-%d %H:%M")}"
    s.clutch
  }
end

