Rails.application.routes.draw do
  resources :rooms do
    resources :articles
  end
end
