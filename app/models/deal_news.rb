# encoding: utf-8
class DealNews < Spider
  def save_deal(item)

    link = item.xpath('link').inner_html.gsub(/\n/, '').split('?')[0].strip
    title = item.xpath('title').inner_text

    doc = Nokogiri::HTML.parse(open(link))

    store_name = doc.css("li[@panel='store-deals'] em.txt").inner_text.sub('Deals', '').strip
    store = get_store(store_name)

    description = item.xpath('description').inner_text.gsub('&lt;', '<').gsub('&gt;', '>')
    description_html = Nokogiri::HTML.parse(description)

    # 剔除 description 中无用的字符串
    des = description_html.inner_text.gsub(/<\/?.*?>/, '').gsub('&nbsp;', '')
    img = description_html.xpath('//img/@src').inner_text

    category = doc.css('div#breadcrumb div.main a[2]').inner_text.gsub(/\u00A0/, ' ')

    pub_date = item.xpath('pubDate').inner_text
    date = Time.parse(pub_date, '%Y-%m-%d %H:%M:%S')

    deal = Deal.new(:title => title, :description_pure => des, :pubDate => date,
                    :location => link.strip, :image => img, :source => site)

    get_categories(deal, category)

    store.deals << deal
    store.save
  end

  #保存一个新的分类或者将原分类的总数+1
  def get_categories(deal, category_name)
    category = Category.find_by_name(category_name)
    Category.new(:name => category_name, :count => 0).save if category.nil?
    c_new = Category.find_by_name(category_name)
    deal.categories << c_new
    count = c_new.count
    c_new.update_attribute('count', count + 1)
  end

end