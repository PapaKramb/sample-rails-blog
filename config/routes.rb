Rails.application.routes.draw do
  get '/' => 'home#index'

  #get 'contacts' => 'contacts#new'
  
  get 'terms' => 'pages#terms'
  get 'about' => 'pages#about'

  resource :contacts, only: [:new, :create], path_names: { :new => '' }
  resources :articles do
    resources :comments
  end

  #get '/home/contacts' => 'contacts#contacts' 

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

