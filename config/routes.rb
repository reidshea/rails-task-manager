Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'tasks#index'
  get 'tasks', to: 'tasks#index', as: :tasks
  get 'task/:id', to: 'tasks#show', as: :task

  get 'new', to: 'tasks#new', as: :new
  post 'tasks', to: 'tasks#create'

  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch 'task/:id', to: 'tasks#update'

  delete 'task/:id', to: 'tasks#delete', as: :delete
end
