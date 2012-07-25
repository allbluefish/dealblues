module ApplicationHelper
  def title(page_title)
    content_for(:title) { page_title }
  end

  def meta(page_meta)
    content_for(:meta) { page_meta }
  end

end
