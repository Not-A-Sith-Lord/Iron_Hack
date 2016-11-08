Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "/", to: 'site#home', as: :home

  get "/text_inspections/new", to: "text_inspection#new", as: :textInspect

  post "/text_inspections", to: "text_inspection#create"

  get "/asciis/new", to: "asciis#new", as: :asciis

  post "/asciis", to: "asciis#create"

  get "/placeholder/new", to: "placeholder#new", as: :placeholder

  post "/placeholder", to: "placeholder#create"
end
