Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'static_pages#root'

  namespace :api, defaults: { format: :json } do
    resources :users, only: %i[create show]
    resource :session, only: %i[create destroy]
    get 'businesses/search', to: 'searches#business_search'
    get 'categories/search', to: 'searches#category_search'
    resources :businesses, only: %i[create index show]
    resources :reviews, only: %i[create update destroy]
    resources :categories, only: [:create]
  end
end
