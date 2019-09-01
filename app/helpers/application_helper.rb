module ApplicationHelper

  def badge_helper badge = "Unknown Status"
    badge_type = ' ' 
    if badge == 'Sell'
       badge_style = 'badge-danger'
       badge_content = 'For Sell'
    else
      badge_style = 'badge-warning'
      badge_content = 'For Rent'
    end
    badge_type << "<span class='badge #{badge_style}'>#{badge_content}</span>"
    badge_type.html_safe
  end
end
