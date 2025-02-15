Rails.application.routes.draw do

  post "likes/:post_id/create" => "likes#create"
  post "likes/:post_id/destroy" => "likes#destroy"

  post "users/:id/update" => "users#update"
  get "users/:id/edit" => "users#edit"
  post "users/create" => "users#create"
  get "signup" => "users#new"
  get "users/index" => "users#index"
  get "users/:id" => "users#show"
  post "login" => "users#login"
  post "logout" => "users#logout"
  get "login" => "users#login_form"
  get "users/:id/likes" => "users#likes"
  get "users/:id/message" => "users#message"

  get "posts/index" => "posts#index"
  get "posts/new" => "posts#new"
  get "posts/:id" =>"posts#show"
  post "posts/create" => "posts#create"
  get "posts/:id/edit" => "posts#edit"
  post "posts/:id/update" => "posts#update"
  post "posts/:id/destroy" => "posts#destroy"
  
  get "category/select_category_index" => "category#select_category_index"
  get "category/select_category_index/:id" => "posts#show"

  get "/" => "home#top"
  get "about" => "home#about"

end
