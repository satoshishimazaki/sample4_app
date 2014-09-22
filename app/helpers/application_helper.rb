module ApplicationHelper

  # ページごとの完全なタイトルを返します。
  def full_title(page_title)
    base_title = "Ruby on Rails Tutorial Sample App"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end

  def article_image_tag(article, options = {})
  	if article.image.present?
  		path = article_path(article, format: article.image.extension)
  		link_to(image_tag(path, { alt: article.name }.merge(options)), path)
  	else
  		""
  	end
  end
 end