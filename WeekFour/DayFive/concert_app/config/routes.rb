Rails.application.routes.draw do

get "/", to: "site#home", as: :home

resources :concerts do 
	resources :comments
end

# get "/new/concert", to: "concert#new", as: "new"

# get "/concert/:id", to: "concert#show", as: "concert"






end
