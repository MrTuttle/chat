Rails.application.routes.draw do
  resources :rooms
    resources :articles
  end
end
