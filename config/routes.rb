Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "matches#index"
  resources :matches do
    resources :match_maker, only: %i[create edit update]
  end

  resources :match_maker, only: %i[destroy]

end
