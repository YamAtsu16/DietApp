Rails.application.routes.draw do
  devise_for :users
  root to: "records#index"
  resources :records do
    resources :meals
  end
  resources :bodies, only: [:index, :new, :create]
end