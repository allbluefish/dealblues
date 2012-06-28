require 'rufus/scheduler'

scheduler = Rufus::Scheduler.start_new

#scheduler.every '20m' do
#  respond_to "order ristretto"
#end

#spider = Spider.new

#spiders = Spider.all
#scheduler.every '5s' do
#  spiders.each { |s|
#    p "the site #{s.site} spider date at #{Time.now.strftime("%Y-%m-%d %H:%M")}"
#    p s.site
  #}
#end

