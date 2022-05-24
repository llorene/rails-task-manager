Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # # index-> read all
  # get 'tasks', to: 'tasks#index'

  # # create - new
  # get 'tasks/new', to: 'tasks#new'
  # post 'tasks', to: 'tasks#create'

  # # show --> read one
  # get 'tasks/:id', to: 'tasks#show', as: :task

  # # update - edit
  # get 'tasks/:id/edit', to: 'tasks#edit'
  # patch 'tasks/:id', to: 'tasks#update'

  # # delete
  # delete 'tasks/:id', to: 'tasks#destroy'
  resources :tasks
end
