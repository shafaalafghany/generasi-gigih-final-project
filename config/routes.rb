Rails.application.routes.draw do
  get 'menucategories/new'
  resources :menus, except: :show
  resources :customers, except: [:edit, :destroy]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
