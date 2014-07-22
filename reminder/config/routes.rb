Rails.application.routes.draw do
  root to: 'tasks#index'
  post "tasks" => "tasks#create", as: :tasks

  patch "tasks/:id" => "tasks#complete", as: :complete_task

  delete "tasks/:id" => "tasks#destroy", as: :task
end
