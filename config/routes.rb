Rails.application.routes.draw do
  get '/' => 'home#index'

  #get 'contacts' => 'contacts#new'
  resource :contacts, only: [:new, :create], path_names: {:new => ''}
  resources :articles

  #get '/home/contacts' => 'contacts#contacts' 

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

