Rails.application.routes.draw do
  resources :users do
    post :confirm, on: :collection
  end
  resources :messages
end
