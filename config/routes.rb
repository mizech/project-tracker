Rails.application.routes.draw do
  devise_for :users
  resources :projects
  resources :memberships
  resources :departments do
    resources :employees
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  root "projects#index"

  delete "/membership/:project_id/:employee_id", to: "memberships#destroy", as: "delete_membership"
  get "/membership/:project_id/:employee_id", to: "memberships#show", as: "show_membership"
  get "/membership-update/:project_id/:employee_id", to: "memberships#edit", as: "update_membership"
end
