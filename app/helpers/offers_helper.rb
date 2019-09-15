module OffersHelper


	def offer_status offer
		if offer.status == "Open"
			(link_to "Mark as Closed", closed_offer_path(offer), class: "btn btn-outline-success btn-sm")+ 
    	    (" ".html_safe )+
	        (link_to "Mark as Dead", dead_offer_path(offer), class: "btn btn-outline-danger btn-sm")
		else  
			 link_to "Mark as Open", open_offer_path(offer), class: "btn btn-outline-info btn-sm"
		end	
	end


	def offer_badge offer
		badge_type = ' '
		if offer.status == 'Open'
		   badge_style = 'badge-info'
		elsif offer.status == 'Closed'
		  badge_style = 'badge-success'
		else offer.status == 'Dead'
		  badge_style = 'badge-danger'
		end
		badge_type << "<span class='badge #{badge_style}'>#{offer.status}</span>"
		badge_type.html_safe
	end

end
