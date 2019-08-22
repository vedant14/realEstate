class StaticController < ApplicationController
  def home
  	    @beds = Property.distinct.pluck(:bedroom).reverse
  end


  def about
  end

  def contact_us
  end

  def faq
  end
end
