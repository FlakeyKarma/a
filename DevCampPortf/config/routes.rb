Rails.application.routes.draw do
  resources :topics, only: [:index, :show]
  devise_for :users, path: '', path_names: {sign_in: 'login', sign_out: 'Logout', sign_up: 'REgiSta'}
  resources :users
  resources :portfolios, except: [:show]
  get 'angular-items', to: 'portfolios#angular'
  get 'portfolios/:id', to: 'portfolios#show', as: 'portfolio_show'

  get 'About-me', to: 'pages#about'
  get 'Talk-to-me', to: 'pages#contact'

  resources :blogs

  root to: 'pages#home'
end
