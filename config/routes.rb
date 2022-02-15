Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'profiles#home'
  get 'profiles/work', to: 'profiles#work'
  get 'profiles/projects', to: 'profiles#projects'
  get 'profiles/about', to: 'profiles#about'

  resources :messages
end
