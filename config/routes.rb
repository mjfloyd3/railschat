Rails.application.routes.draw do
  
#	get '/' => "home#index"  
 	get "log_out" => "sessions#destroy", :as => "log_out"
	get "log_in" => "sessions#new", :as => "log_in"
	get "sign_up" => "users#new", :as => "sign_up"
	post '/sessions/create' => 'sessions#create'
  resources :users, only: [:new, :create]
  resources :sessions

  resources :chats do
  	resource :groups
  	resources :messages
  end

  root to: "chats#index"
 

  

  
#  	resources :direct_messages
#  	resources :sessions
#	
#  	get '/messages/:id' => 'messages#show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
