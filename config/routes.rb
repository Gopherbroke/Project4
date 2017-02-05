Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "pieces#index"

  get "/pieces", to: "pieces#index", as: "pieces"

end
