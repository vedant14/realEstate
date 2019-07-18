Rails.application.routes.draw do

  devise_for :users
  get 'static/home'
  get 'static/about'
  get 'static/contact_us'
  get 'static/faq'
	root to: 'static#home'
end
