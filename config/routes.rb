Rails.application.routes.draw do
  root to: 'rooms#index'

  resources :rooms do
    resources :articles
  end

  resources :articles do
    collection do
      get :top
    end
  end
end
