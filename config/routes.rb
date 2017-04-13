Rails.application.routes.draw do
  devise_for :users

  root 'pages#index'

  require 'sidekiq/web'
  require 'sidekiq-scheduler'
  require 'sidekiq-scheduler/web'
  mount Sidekiq::Web, at: '/sidekiq'

  namespace :admin do
    root 'dashboard#index'
    resources :sites
    resources :services
    resources :service_statuses
    resources :maintenances
    resources :components
    resources :issues
  end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
