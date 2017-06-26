Rails.application.routes.draw do
  resources :users
  resources :portfolios, except: [:show]
  get 'angular-items', to: 'portfolios#angular'
  get 'portfolios/:id', to: 'portfolios#show', as: 'portfolio_show'

  get 'About-me', to: 'pages#about'
  get 'Talk-to-me', to: 'pages#contact'

  resources :blogs

  root to: 'pages#home'
end
