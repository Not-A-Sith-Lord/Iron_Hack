Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


	get "/", to: "site#home"

	get "/users/new", to: "users#new", as: :new_user

	post "/users", to: "users#create"


end
