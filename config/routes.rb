Rails.application.routes.draw do
  devise_for :users
  root 'posts#index'
  resources :posts do
    collection do
      get 'list', to: 'posts#list'
    end
  end
  resources :users, only: :show
end
