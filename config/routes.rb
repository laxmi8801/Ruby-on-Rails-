#ku=ind to urls.py file every template or page create is mapped by routes.rb file

Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do  
    get '/users/sign_out' => 'devise/sessions#destroy' 
 end
  #rails auto create this
  resources :friends
  #get 'home/index'
  get 'home/about'
  #to display index page at localhoat 127.0.0.1:3000 instead of localhost 127.0.0.1:300/home/index
  root 'home#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"


end
