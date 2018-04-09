Rails.application.routes.draw do
  defaults format: :json do
    post "/auth", to: "auth#create"
    get "/auth", to: "auth#show"

    resources :users, only: [:show] do
      resources :scoresheets, only: [:index, :create]
    end

    resources :scoresheets, only: [:show, :destroy, :update]

    get '/contests/:year', to: 'contests#show'
    get '/contests/', to: 'contests#index'

    resources :entries, only: [:show]

    resources :scorings, only: [:create, :update, :delete]

    resources :countries, only:  [:index, :show]

    post '/entries/:id/comments', to: 'comments#entry'
  end





  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
