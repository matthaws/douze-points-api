Rails.application.routes.draw do
  defaults format: :json do
    post "/auth", to: "auth#create"
    get "/auth", to: "auth#show"
    resources :users, only: [:show] do
      resources :scoresheets, only: [:index, :create]
    end
    resources :scoresheets, only: [:show, :destroy, :update]
    # resources :contests, only: [:index, :show]
    get '/contests/:year', to: 'contests#show'
    get '/contests/', to: 'contests#index'
    get '/countries', to: 'countries#index'
  end





  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
