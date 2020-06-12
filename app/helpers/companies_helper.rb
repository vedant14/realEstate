module CompaniesHelper

  def status_text_company company
    if company.enabled?
      "De-list"
    else
      "Enable"  
    end  
  end  

  def status_class_company company
    if company.enabled?
      "btn btn-outline-danger btn-sm"
    else
      "btn btn-outline-success btn-sm" 
    end  
  end  

end
