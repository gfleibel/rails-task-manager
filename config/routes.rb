Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get 'index', to: 'tasks#index'
  get 'task/:id', to: 'tasks#show', as: :task
  get 'new', to: 'tasks#new'
  post 'tasks', to: 'tasks#create'
  get '/task/:id/edit', to: 'tasks#edit', as: :edit
  patch 'task/:id', to: 'tasks#update'
  delete 'task/:id', to: 'tasks#destroy', status: :see_other
end
