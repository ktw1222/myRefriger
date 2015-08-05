Rails.application.routes.draw do
  root to: 'refrigers#home'

  resources :refrigers do
    resources :foods
  end
end
