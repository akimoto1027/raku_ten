Rails.application.routes.draw do
  devise_for :users
  root 'posts#top'

  resources :posts do
    collection do
      get 'list', to: 'posts#list'
      get 'top', to: 'posts#top'
    end
  end
  resources :users, only: :show
end
