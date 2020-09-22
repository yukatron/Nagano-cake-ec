Rails.application.routes.draw do

  root 'pblic/items#top'
  devise_for :customers

  get '/items/about' => 'public/items#about', as: 'customer_about'
  devise_for :admins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/items' => 'public/items#index'
  get '/items/:id' => 'public/items#show'
end
