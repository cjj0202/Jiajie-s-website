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

  def client
  client = Twitter::REST::Client.new do |config|
    config.consumer_key         = "EPKL701MI0VbDiLd5PKxLA"
    config.consumer_secret      = "Rpuu8W7HgCfiIAPXhNAIN0UyFa2qdoWL0fvvQMJk"
    config.access_token         = "1417362398-83KEXzSt0syFF43wI75GEz4SSK1D9QOjnSt5PCS"
    config.access_token_secret  = "xuCTfBkREeiAVIeDGP1yqiFRajMfD09mOTnx8MNYpQmjW"

  end
    end
end
