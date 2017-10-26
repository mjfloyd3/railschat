Rails.application.routes.draw do
  
	get '/' => "home#index"  
 	get "log_out" => "sessions#destroy", :as => "log_out"
	get "log_in" => "sessions#new", :as => "log_in"
	get "sign_up" => "users#new", :as => "sign_up"
	post '/sessions/create' => 'sessions#create'
	root :to => "users#new"
	resources :chats, only: [:new, :create, :show, :index]
	root 'chats#index'
  	resources :users
  	resources :groups
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
