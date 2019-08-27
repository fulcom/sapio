Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :subs_bookings, only: [:index, :show, :new, :create]
  resources :activities, only: [:index, :show] do
    resources :act_bookings, only: [:show, :new, :create]
    resources :favorites, only: [:create, :destroy]
  end

  resources :act_bookings, only: [:index] do
      resources :reviews, only: [:new, :create]
  end
  # resources :places, only: [:show]
  resources :subscriptions, only: [:index, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
