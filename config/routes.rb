Rails.application.routes.draw do

  namespace :admins do

    resources :travels

    resources :travel_genres, only: [:index, :edit, :update, :create]

    resources :bookings

    resources :customers, only: [:index, :show]
  end
  namespace :admins do
    get 'bookings/index'
    get 'bookings/show'
    get 'bookings/edit'
  end
  namespace :admins do
    get 'customers/index'
    get 'customers/show'
  end

  devise_for :admins, controllers: {
    sessions:      'admins/sessions',
    passwords:     'admins/passwords',
    registrations: 'admins/registrations'
  }
  devise_for :customers, controllers: {
    sessions:      'customers/sessions',
    passwords:     'customers/passwords',
    registrations: 'customers/registrations'
  }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'homes#top'
  get 'about' => 'homes#about'

  namespace :customers do
    resources :travels, only: [:index, :show] do
      resources :bookings, only: [:new, :create]
    end
    resources :bookings, only: [:index, :show]
    resources :travel_genres, only: [:show]
    get 'mypage'
    get 'fix'
    patch 'fix' => 'fix_update'
    put 'fix' => 'fix_update'
    get 'thanks' => 'bookings#thanks'
  end



end
