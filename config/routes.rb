Rails.application.routes.draw do
  root 'pages#index'

  require 'sidekiq/web'
  require 'sidekiq-scheduler'
  require 'sidekiq-scheduler/web'
  mount Sidekiq::Web, at: '/sidekiq'

  devise_for :users
  resources :issues, only: :show
  resources :maintenances, only: :show
  namespace :admin do
    root 'dashboard#index'
    resources :sites
    resources :services
    resources :service_statuses
    resources :maintenances
    resources :components
    resources :issues do
      resources :issue_updates
    end
  end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
