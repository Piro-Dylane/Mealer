Rails.application.routes.draw do
  devise_for :users, controllers: {registrations: "users/registrations" }
  root to: 'pages#home'
  resources :events do
    member do
      get :roulette
    end
    resources :chatrooms, only: :show do
      resources :messages, only: :create
    end
    resources :members, only: [:create, :destroy]
    resources :categories, only: %i[show create] do
      resources :items, only: [:create]
      resources :suggestions, only: [:create] do
        member do
          patch :vote, :downvote
        end
      end
    end
  end

  resources :suggestions, only: [:update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
