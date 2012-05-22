DemoApp::Application.routes.draw do 
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
      
  match '/signup',  to: 'users#new'
  match '/signin',  to: 'sessions#new'
  match '/signout', to: 'sessions#destroy', via: :delete
  
  root to: "static_pages#home"
  
  get "users/new"
  
  get "profile_pages/profile"

  get "profile_pages/editprofile"

  get "profile_pages/contact"

  get "profile_pages/emailedit"

  get "profile_pages/phoneedit"

  get "test_pages/home"

  get "static_pages/home"

  get "static_pages/help"
  
  match '/help', to: 'static_pages#help'

  get "static_pages/about"
  
  get "static_pages/contact"

  get "pages/home"

  get "pages/contact"
  
end
