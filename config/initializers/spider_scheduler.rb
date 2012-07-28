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

  month = 60 * 60 * 24 * 30
  scheduler.every '2m' do
    now = Time.now
    before = (now + month).strftime('%Y-%m-%d')
    deals = Deal.where("pubDate < '#{before}'").order("pubDate desc").all
    deals.each { |d|
      d.categories.each { |c|
        c_count = c.count
        c.update_attribute('count', c_count - 1)
      }

      store = d.store
      s_count = store.count
      store.update_attribute('count', s_count - 1)
    }

    Deal.delete_all("pubDate < '#{before}'")
  end
#scheduler.every '20m' do
#  respond_to "order ristretto"
#end


end