Rails.application.routes.draw do
  resources :comments
  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :targets
  get 'pages/index'
  root 'pages#index'
  get 'users/:id' => 'users#show', as: :user
  get 'users', to: 'users#index', as: :users
  get 'personal', to: 'targets#personal', as: :personal
  get 'contact', to: 'pages#contact'
  get 'about', to: 'pages#about'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
