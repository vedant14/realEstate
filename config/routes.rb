class SubdomainConstraint
  def self.matches?(request)
    subdomains = %w{ www admin}
    request.subdomain.present? && !subdomains.include?(request.subdomain)
  end
end
Rails.application.routes.draw do

  constraints SubdomainConstraint do
    namespace :admin do
        resources :users
        resources :companies
         resources :admin_users
      end

    resources :properties do 
      member do 
        get :toggle_status
        get :list
        get :unlist
        get :toggle_featured
        delete :delete_image_attachment
      end
    end

   
    resources :offers do
      member do 
        get :open
        get :dead
        get :closed
      end
    end

    get 'view-properties', to: 'properties#view_properties'

    
  	get 'static/home'
  	get 'about-us', to: 'static#about'
  	get 'contact-us', to: 'static#contact_us'
  	get 'faqs', to: 'static#faq'
  	root to: 'static#home'
    get 'not_authorised', to: 'static#not_authorised'
  end 

  	resources :companies do
      member do 
        get :toggle_status
      end
    end
    devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register'}
end
