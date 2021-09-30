Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'static_pages#root'

  namespace :api, defaults: { format: :json } do
    resources :users, only: %i[create show]
    resources :businesses, only: %i[index show] do
      resources :reviews, only: %i[index show create update]
    end
    resource :session, only: %i[create destroy]
  end
end
