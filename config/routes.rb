Rails.application.routes.draw do
  devise_for :users

  root to: 'payments#index'

  resources :payments, only: :index
  resources :clients, only: %i{index new create}
end
