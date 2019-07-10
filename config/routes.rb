Rails.application.routes.draw do
  resources :users do
    post :confirm
  end
  resources :messages
end
