Rails.application.routes.draw do
  resources :tests
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }
  resources :portfolios

  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'
  resources :blogs do
    member do
      get :toggle_status
    end
  end

  root to: "blogs#homepage"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
