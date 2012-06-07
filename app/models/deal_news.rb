# encoding: utf-8
class DealNews < Spider
  def save_deal(item)

    link = item.xpath('link').inner_html.gsub(/\n/, '')

    title = item.xpath('title').inner_text
    title_split = title.split('–')

    store_name = title_split[0].strip.gsub('’'," ' ")
    title_name = title_split[1].strip
    store = get_store(store_name)

    doc = Nokogiri::HTML.parse(open(link))

    img = doc.css('div.entry-image img/@src')
    des = doc.css('div#entry-content p').inner_text

    pub_date = item.xpath('pubDate').inner_text
    date = Time.parse(pub_date, '%Y-%m-%d %H:%M:%S')

    deal = Deal.new(:title => title_name, :description_pure => des, :pubDate => date,
                    :location => link.strip, :image => "http://dealofday.com#{img}", :source => site)

    get_categories(deal, item)

    store.deals << deal
    store.save
  end

end