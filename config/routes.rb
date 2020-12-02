Rails.application.routes.draw do
  resources :users
  root to: "students#index"
  resources :students
  resources :institutions
  get "/search"=>"students#search_list"
  get '/register' =>"students#new"
  get '/login' =>"users#login"
  post '/verify_login' =>"users#verify_login"
  get '/update_status' =>"students#update_status"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
