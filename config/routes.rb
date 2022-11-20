Rails.application.routes.draw do
  resources :commands
  # get 'dogs/index'
  # get 'dogs/show'
  # get 'dogs/new'
  # get 'dogs/edit'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :dogs
end
