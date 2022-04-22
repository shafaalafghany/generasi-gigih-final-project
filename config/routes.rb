Rails.application.routes.draw do
  get 'menus/index'
  get 'menus/new'
  get 'menus/edit'
  get 'menus/delete'
  resources :customers
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
