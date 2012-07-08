require 'rufus/scheduler'

class Scheduler
  $application = {}


  scheduler = Rufus::Scheduler.start_new


  scheduler.every '1m' do
    $application.each { |key, value|
      p "key : #{key},value : #{value}"
      deal = Deal.find(key)
      visit_count = deal.visit_count + value
      deal.update_attribute('visit_count', visit_count)
    }
    $application = {}
  end


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

end