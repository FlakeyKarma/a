Rails.application.routes.draw do
  resources :portfolios, except: [:show]
  get 'portfolios/:id', to: 'portfolios#show', as: 'portfolio_show'

  get 'About-me', to: 'pages#about'
  get 'Talk-to-me', to: 'pages#contact'

  resources :blogs

  root to: 'pages#home'
end
