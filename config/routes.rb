Rails.application.routes.draw do
  get 'bookmarks/new'
  get 'bookmarks/create'
  get "up" => "rails/health#show", as: :rails_health_check

  root to: "lists#index"
  resources :lists, only: [:index, :show, :new, :create, ] do
    resources :bookmarks, only: [:new, :create]
  end
  resources :bookmarks, only: [:delete]
end
