Rails.application.routes.draw do

  get 'offers/new'
  resources :properties
  resources :offers
  
  
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register'}
	get 'static/home'
	get 'about-us', to: 'static#about'
	get 'contact-us', to: 'static#contact_us'
	get 'faqs', to: 'static#faq'
	root to: 'static#home'
end
