Rails.application.routes.draw do
  devise_for :users
  root 'pages#home'
  get 'dashboard',to: "pages#dashboard"
  resources :articles

  # devise_for :users do
  #   get '/profile'    => 'devise/registrations#edit',   :as => :edit_user_registration
  # end
end
