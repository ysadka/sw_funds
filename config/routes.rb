Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'statics#homepage'

  resources :sessions
  resources :trips
  resources :users

end
