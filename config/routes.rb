Rails.application.routes.draw do
  devise_for :users, controllers: {omniauth_callbacks: "callbacks"}
  root "static_pages#home"
  get "static_pages/help"

  namespace :admin do
    root "season#index"
    resources :seasons
    resources :matches
  end
end
