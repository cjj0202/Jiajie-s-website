module ApplicationHelper

  # Returns the full title on a per-page basis.
  def full_title(page_title)
    base_title = "Jiajie's Website"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end

  def images_url(id)
      return image_tag Gallery.find_by_id(id).file_url
  end
end
