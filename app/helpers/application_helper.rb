module ApplicationHelper

  def user_or_admin record
    if current_user.present?
      record.user_id == current_user.id || admin?
    end
  end


  def admin?
    if current_user.present?
      current_user.type == "AdminUser"
    end
  end

  def badge_helper badge = "Unknown Status"
    badge_type = ' ' 
    if badge == 'Sell'
       badge_style = 'badge-danger'
       badge_content = 'For Sell'
    elsif badge == 'Rent'
      badge_style = 'badge-warning'
      badge_content = 'For Rent'
    end
    badge_type << "<span class='badge #{badge_style}'>#{badge_content}</span>"
    badge_type.html_safe
  end

  class SubdomainConstraint
    def self.matches?(request)
      subdomains = %w{ www admin }
      request.subdomain.present? && !subdomains.include?(request.subdomain)
    end
  end
 
  def copyright_generator
    DevcampViewTool::Renderer.copyright 'Homzhub', 'All rights reserved'
  end


end
