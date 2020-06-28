Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :customers, controllers: {
    sessions:      'customers/sessions',
    passwords:     'customers/passwords',
    registrations: 'customers/registrations'
  }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'homes#top'
  get 'about' => 'homes#about'
  get 'customers/mypage' => 'customers#mypage'
  get 'customers/withdraw' => 'customers#withdraw'
  put 'customers/withdraw' => 'customers#withdraw_update'
  get 'customers/fix' => 'customers#fix'
  patch 'customers/fix' => 'customers#fix_update'
  put 'customers/fix' => 'customers#fix_update'

  namespace :customers do
    resources :travels, only: [:index, :show]
    resources :bookings
  end



end
