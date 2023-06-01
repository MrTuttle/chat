Rails.application.routes.draw do
  root to: 'rooms#index'

  resources :rooms do
    collection do
      get :toprooms
    end
    resources :articles
  end

  resources :articles do
    collection do
      get :top
    end
  end
end
