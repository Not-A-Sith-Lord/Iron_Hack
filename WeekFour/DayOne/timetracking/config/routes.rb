Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "/", to: "projects#index"

  resources :projects, only: [:index, :show, :new, :create] do 
    resources :time_entries, except: [:show]
  end



  get "/about", to: "site#about"

  get "/contact", to: "site#contact"

  get "/say_name/:name", to: 'site#say_name'

  get "/calculator", to: "calculator#add_form"

  post "/calculate", to: "calculator#addition"

  delete "/projects/:project_id/time_entries/:id", to: "time_entries#destroy"

end
