Rails.application.routes.draw do

  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register'}
  get 'static/home'
  get 'static/about'
  get 'static/contact_us'
  get 'static/faq'
	root to: 'static#home'
end
