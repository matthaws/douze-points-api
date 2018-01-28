Rails.application.routes.draw do
  defaults format: :json do
    get "/auth/facebook/callback", to: "auth#create"
    get "/auth/google/callback", to: "auth#create"
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
