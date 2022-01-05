Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :events do
    resources :chatrooms, only: :show do
      resources :messages, only: :create
    end
    resources :members, only: [:create, :destroy]
    resources :categories, only: %i[show create] do
      resources :items, only: [:create]
      resources :suggestions, only: [:create]
    end
  end

  resources :suggestions, only: [:update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
