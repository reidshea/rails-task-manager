Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'tasks', to: 'tasks#index', as: :tasks

  get 'task/:id', to: 'tasks#show', as: :show

  get 'new', to: 'tasks#new', as: :new
  post 'tasks', to: 'tasks#create', as: :create
end
