# encoding: UTF-8
require 'open-uri'
require 'nokogiri'

class Spider < ActiveRecord::Base

  def show_status
    status == 0 ? 'non-use' : 'in-use'
  end

  def clutch
    doc = Nokogiri::XML.parse(open(rss_url))
    get_rss_deal(doc)
  end

  #根据节点名抓取该节点下的内容
  def get_node(doc, xpath)
    items = Array.new
    doc.xpath(xpath).each do |link|
      items.push(link)
    end
    items
  end

  def get_rss_deal(doc)
    items = get_node(doc, '//item')
    deals = Deal.order("pubDate DESC").find_all_by_source(site)
    count = deals.count

    items.each do |item|
      if count != 0
        last_time = deals.first.pubDate
        pub_date = Time.parse(item.xpath('pubDate').inner_text)
        save_deal(item) if pub_date > last_time
      else
        save_deal(item)
      end
    end

  end

  def get_store(store_name)
    store = Store.find_by_name(store_name)
    Store.new(:name => store_name).save if store.nil?
    Store.find_by_name(store_name)
  end

  def get_categories(deal, item)
    categories = item.xpath('category')
    categories.each do |c|
      category_name = c.inner_html.strip
      category = Category.find_by_name(category_name)
      Category.new(:name => category_name, :count => 0).save if category.nil?
      c_new = Category.find_by_name(category_name)
      deal.categories << c_new
      count = c_new.count
      c_new.update_attribute('count', count + 1)
    end
  end

end