Rails.application.routes.draw do
  #devise_for :users
  devise_for :users, path: 'auth',
   path_names: {
   sign_in: 'login',
    sign_out: 'logout',
     password: 'secret',
      confirmation: 'verification',
       #unlock: 'unblock',
        registration: 'register',
         sign_up: 'cmon_let_me_in' }
  resources :cours
  get 'page/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "page#index"
end
