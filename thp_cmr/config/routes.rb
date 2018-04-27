Rails.application.routes.draw do

  get 'about/yvan', to: 'static_pages#yvan', as: 'yvan'

  get 'about/thp_cmr', to: 'static_pages#thp_cmr', as: 'thp_cmr'

  root "static_pages#home", as: 'home'

  get 'contact', to: "static_pages#contact", as: 'contact'
	
  get 'about', to: "static_pages#about", as: 'about'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end