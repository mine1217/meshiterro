Rails.application.routes.draw do
  get 'post_images/new'
  get 'post_images/index'
  get 'post_images/show'
  root to: 'homes#top'
  devise_for :users

  resources :post_images, only: [:new, :create, :index, :show, :destroy] #必要なアクションだけルートを設定するようにする
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
