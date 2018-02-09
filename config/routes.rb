Rails.application.routes.draw do
  defaults format: :json do
    post "/auth", to: "auth#create"
    get "/auth", to: "auth#show"
    resources :users, only: [:show]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
