Rails.application.routes.draw do
  devise_for :users
  root to: 'refrigers#home'

  resources :refrigers do
    resources :foods
  end

  resources :posts do
    resources :comments
  end

end
