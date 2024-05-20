Rails.application.routes.draw do
  resources :projects
  resources :memberships
  resources :departments do
    resources :employees
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  root "projects#index"

  delete "/project/:project_id/:employee_id", to: "memberships#destroy", as: "delete_membership"
end
