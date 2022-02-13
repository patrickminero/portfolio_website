Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'profiles#home'
  get 'profiles/resume', to: 'profiles#resume'
  get 'profiles/projects', to: 'profiles#projects'

  resources :messages
end
