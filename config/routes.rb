Rails.application.routes.draw do
  root 'public_posts#index'

  get 'categories/:id', to: 'public_posts#posts_category', as: 'posts_category'

  get 'posts/:url', to: 'public_posts#show', as: 'posts_show'

  devise_for :users

  resources :meets

  resources :ads

  resources :comments
  post 'create_comment', to: 'public_posts#create_comment', as: 'create_comment'

  resources :categories

  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
