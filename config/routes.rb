Rails.application.routes.draw do

  devise_for :users
  resources :users, only: [:show, :destroy]
# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

get 'posts' => 'posts#index'
get 'posts/new' => 'posts#new'
post 'posts' =>  'posts#create'
get 'posts/:id' =>  'posts#show',as: 'post'
patch 'posts/:id' => 'posts#update'
delete 'posts/:id' => 'posts#destroy'
get 'posts/:id/edit' => 'posts#edit', as:'edit_post'
get "users/sing_in" => "user#sign_in"
root 'posts#index'


end
