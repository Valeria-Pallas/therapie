Rails.application.routes.draw do
  devise_for :users
  root to: "articles#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # config/routes.rb
  resources :articles, only: [:index, :show, :new, :create, :edit, :update, :destroy] do
    resources :comments, only: [:create, :edit, :show, :destroy]
    member do
      get 'show_article' # Agrega esta línea para la vista personalizada
    end
  end
end
