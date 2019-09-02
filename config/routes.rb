Rails.application.routes.draw do

  namespace :admin do
      resources :users
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
    end
  end
  resources :offers
  get 'view-properties', to: 'properties#view_properties'

  
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register'}
	get 'static/home'
	get 'about-us', to: 'static#about'
	get 'contact-us', to: 'static#contact_us'
	get 'faqs', to: 'static#faq'
	root to: 'static#home'
end
