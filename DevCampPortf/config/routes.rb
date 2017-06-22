Rails.application.routes.draw do
  resources :portfolios

  get 'About-me', to: 'pages#about'
  get 'Talk-to-me', to: 'pages#contact'

  resources :blogs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
end
