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

  #解析抓取到的rss下的所有类容
  def get_rss_deal(doc)
    items = get_node(doc, '//item')
    deals = Deal.order("pubDate DESC").find_all_by_source(site)
    count = deals.count
    last_time = deals.first.pubDate if count !=0

    items.each do |item|
      if count != 0
        pub_date = Time.parse(item.xpath('pubDate').inner_text)
        save_deal(item) if pub_date > last_time
      else
        save_deal(item)
      end
    end

  end

  #判断该store是否为新增
  def get_store(store_name)
    store = Store.find_by_name(store_name)
    Store.new(:name => store_name, :count => 0).save if store.nil?
    s_new = Store.find_by_name(store_name)
    count = s_new.count
    s_new.update_attribute('count', count + 1)
    s_new
  end

  #保存一个新的分类或者将原分类的总数+1
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