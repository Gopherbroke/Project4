Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "pieces#index"

  #get "/pieces", to: "pieces#index", as: "pieces"

  #get "/users", to: "users#index", as: "users"

  #get "/users/new", to: "users#new", as: "new_user"

  # resources :pieces, path: '/pieces'

  #resources :comments, path: '/comments'

  resources :pieces do
    resources :comments
  end

end
