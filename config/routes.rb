Rails.application.routes.draw do
  root to: 'rooms#index'

  resources :rooms do
    resources :articles
  end
end
