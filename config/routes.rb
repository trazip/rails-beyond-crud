Rails.application.routes.draw do
  resources :restaurants, shallow: true do
    collection do
      get :top
    end

    member do
      get :chef
    end
    
    resources :reviews, only: %i[ new create destroy ]
  end

  # resources :reviews, only: :destroy
end
