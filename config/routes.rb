class SubdomainConstraint
  def self.matches?(request)
    subdomains = %w{ www admin ww2 }
    request.subdomain.present? && !subdomains.include?(request.subdomain)
  end
end

Rails.application.routes.draw do

  constraints SubdomainConstraint do
    namespace :admin do
        resources :users
        resources :companies
        # resources :offers
        # resources :properties
         resources :admin_users
        # root to: "users#index"
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
  end 

  	resources :companies
    devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register'}
    root :to => redirect("/login")
end
