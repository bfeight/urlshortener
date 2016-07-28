Rails.application.routes.draw do

  root :to => 'categories#index'

  # get '/categories' => 'categories#index'
  resources :categories
  get '/:id' => "categories#show"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
