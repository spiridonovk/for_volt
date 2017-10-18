Rails.application.routes.draw do
  require 'sidekiq/web'
  mount Sidekiq::Web => "/sidekiq"
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'
  resources :users
  root 'sessions#new'
    namespace 'api' do
    namespace 'v1' do
      post '/reports/by_author', to: 'reports#by_author'
      resources :posts
    end
    end
end
