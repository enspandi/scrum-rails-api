Rails.application.routes.draw do

  resources :projects do
    resources :sprints
  end

  resources :sprints do
    resources :backlog_items
  end

  resources :backlog_items do
    resources :tasks
  end

end
