Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'statics#homepage'

  get    "/signup", to: "users#new"

  get    "/login",  to: "sessions#new"
  post   "/login",  to: "sessions#create"
  delete "/logout", to: "sessions#destroy"

  resources :trips, except: :index
  resources :users, except: [:new, :index]

end
