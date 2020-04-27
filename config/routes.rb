Rails.application.routes.draw do
  get 'messages/create'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [:show] do
    resources :cards, only: [:index, :destroy, :new, :edit, :create, :update]
    resources :wants, only: [:index, :destroy, :new, :edit, :create, :update]
  end
  resources :chat_rooms, only: [:show] do
    resources :messages, only: [:create]
  end
end
