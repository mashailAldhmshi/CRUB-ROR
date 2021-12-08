Rails.application.routes.draw do

root 'pages#home'
get 'about', to: 'pages#about'
  resources :project2s, only: [:show, :index, :new, :create, :edit, :update, :destroy]
end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


