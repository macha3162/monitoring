Rails.application.routes.draw do

  require 'sidekiq/web'
  require 'sidekiq-scheduler'
  require 'sidekiq-scheduler/web'
  mount Sidekiq::Web, at: '/sidekiq'

  resources :components
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
