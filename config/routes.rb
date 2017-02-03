Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "artwork#index"

  get "/artwork", to: "artwork#index", as: "artwork"

end
