Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'tasks#index'
  get 'tasks' => 'tasks#index'
  get 'tasks/new' => 'tasks#new', as: 'new_task'

  get 'tasks/:id' => 'tasks#show', as: 'task'
  post 'tasks' => 'tasks#create'

  get 'tasks/:id/edit' => 'tasks#edit', as: 'edit'
  patch 'tasks/:id' => 'tasks#update', as: 'update'

  delete "tasks/:id" => "tasks#destroy"

  # resources :tasks
end
