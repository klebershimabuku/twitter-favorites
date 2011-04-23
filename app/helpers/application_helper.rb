module ApplicationHelper

  def title(title)
    content_for :title, title || "Twitter Favorites Personal Tool"
  end
  
end
