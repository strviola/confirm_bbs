Rails.application.routes.draw do
  resources :users do
    post :confirm, on: :collection
    patch :update_confirm, on: :member
  end
  resources :messages
end
