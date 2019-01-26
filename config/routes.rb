Rails.application.routes.draw do
  get 'password_resets/new'

  get 'password_resets/edit'

  get 'sessions/new'
  root 'month#to_month'
  #get  '/help',    to: 'static_pages#help'
  #get  '/contact', to: 'static_pages#contact'
  get  '/signup',   to: 'users#new'
  get  '/word',      to: 'users#word' 
  get '/month', to: 'static_pages#month'
  get  '/help',    to: 'static_pages#help'
  get  '/contact', to: 'static_pages#contact'
  get  '/signup',  to: 'users#new'
  get '/next_month', to: 'month#next_month'
  get '/previous_month', to: 'month#previous_month'
  post '/next_month', to: 'month#plus'
  get '/to_month', to: 'month#to_month'
  
  resources :users do
    member do
      get :following, :followers
    end
  end
  
  post '/signup',  to: 'users#create'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources :account_activations, only: [:edit]
  resources :password_resets,     only: [:new, :create, :edit, :update]
  resources :microposts,          only: [:create, :destroy]
  resources :relationships,       only: [:create, :destroy]
end
