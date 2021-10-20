Rails.application.routes.draw do
  devise_for :users
  resources :portfolios
  resources :blogs do
    member do
      get :toggle_status
    end
  end

  root to: "blogs#homepage"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
