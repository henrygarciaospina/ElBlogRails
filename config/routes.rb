Rails.application.routes.draw do
  root 'public_posts#index'

  get 'public_posts/show'

  get 'categories/:id', to: 'public_posts#posts_category', as: 'posts_category'

  devise_for :users
  resources :meets
  resources :ads
  resources :comments
  resources :categories
  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
