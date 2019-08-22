Rails.application.routes.draw do

  resources :properties 
  resources :upload_property
  resource :wizard do
    get :step1
    get :step2
    get :step3
    get :step4

    post :validate_step
  end  
  
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register'}
	get 'static/home'
	get 'about-us', to: 'static#about'
	get 'contact-us', to: 'static#contact_us'
	get 'faqs', to: 'static#faq'
	root to: 'static#home'
end
