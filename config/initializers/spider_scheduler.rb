require 'rufus/scheduler'

class Scheduler
  $application = {}


  scheduler = Rufus::Scheduler.start_new


  scheduler.every '20m' do
    $application.each { |key, value|
      p "key : #{key},value : #{value}"
      deal = Deal.find(key)
      visit_count = deal.visit_count + value
      deal.update_attribute('visit_count', visit_count)
    }
    $application = {}
  end

#spider = Spider.new

scheduler.every '3h' do
  spiders = Spider.all
  spiders.each { |s|
    p "the site #{s.site} spider date at #{Time.now.strftime("%Y-%m-%d %H:%M")}"
    s.clutch
}
end

#scheduler.every '20m' do
#  respond_to "order ristretto"
#end


end