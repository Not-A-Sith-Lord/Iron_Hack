Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  get '/', to: 'site#home'

  get "/about", to: "site#about"

  get "/contact", to: "site#contact"

end
