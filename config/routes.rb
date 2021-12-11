Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'herbs#index', as: 'home'

  # gets /about route from pages
  get 'about' => 'pages#about'

  # declares common CRUD routes
  resources :herbs
end
