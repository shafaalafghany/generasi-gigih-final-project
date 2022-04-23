Rails.application.routes.draw do
  resources :menus, except: :show
  resources :customers, except: [:edit, :destroy]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
