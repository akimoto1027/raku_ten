Rails.application.routes.draw do
  root 'posts#top'
  resources :posts
end
