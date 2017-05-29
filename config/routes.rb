Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  post 'user_token' => 'user_token#create'
  namespace :api do
  namespace :v1 do
    get "/users/me" => "users#me"
    put "/users" => "users#update"
    resources :users
    resources :movies
    resources :invites
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
