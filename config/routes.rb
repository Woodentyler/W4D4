Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cats, except: :destroy
  resources :cat_rental_requests, only: [:new, :create] do
    post 'approve', on: :member
    post 'deny', on: :member
  end

  resources :users, only:[:new, :create]
  resource :session, only:[:new, :create]
  get '/session', to: 'sessions#destroy', as: 'logout'
  get '/session/new', to: 'sessions#new', as: 'login'

  root to: redirect('/cats')
end
