class DealOfDay
  def save_deal(item)
    description = item.xpath('description').inner_html

    description_doc = Nokogiri::HTML.parse(description)
    # 剔除 description 中无用的字符串
    button_text = description_doc.xpath('//a').inner_text

    description_no_html = description.gsub(/<\/?.*?>/, '').gsub(button_text, '').gsub('&nbsp;', '')


    store_name = description.split('Store:</b>')[1].split(/<br\s*\/?>/i)[0].strip
    store = get_store(store_name)

    img = description_doc.xpath('//img/@src').inner_text

    title = item.xpath('title').inner_text
    pub_date = item.xpath('pubDate').inner_text
    #date = Time.now.strftime("%Y-%m-%d %H:%M:%S")
    date = Time.parse(pub_date, '%Y-%m-%d %H:%M:%S')
    link = item.xpath('link').inner_text.split('?')[0]

    deal = Deal.new(:title => title, :description_pure => description_no_html.strip, :description => description,
                    :pubDate => date, :location => link.strip, :image => img, :source => site)

    get_categories(deal, item)

    store.deals << deal
    store.save
  end

end