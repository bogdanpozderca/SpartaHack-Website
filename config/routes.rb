# == Route Map
#
#     Prefix Verb   URI Pattern              Controller#Action
# home_index GET    /home(.:format)          home#index
#            POST   /home(.:format)          home#create
#   new_home GET    /home/new(.:format)      home#new
#  edit_home GET    /home/:id/edit(.:format) home#edit
#       home GET    /home/:id(.:format)      home#show
#            PATCH  /home/:id(.:format)      home#update
#            PUT    /home/:id(.:format)      home#update
#            DELETE /home/:id(.:format)      home#destroy
#  subscribe POST   /subscribe(.:format)     home#subscribe
# user_index GET    /user(.:format)          user#index
#            POST   /user(.:format)          user#create
#   new_user GET    /user/new(.:format)      user#new
#  edit_user GET    /user/:id/edit(.:format) user#edit
#       user GET    /user/:id(.:format)      user#show
#            PATCH  /user/:id(.:format)      user#update
#            PUT    /user/:id(.:format)      user#update
#            DELETE /user/:id(.:format)      user#destroy
#      login GET    /login(.:format)         sessions#new
#            POST   /login(.:format)         sessions#create
#     logout GET    /logout(.:format)        sessions#destroy
#       root GET    /                        home#index
#

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :home
  post "/subscribe", to: 'home#subscribe'
  post "/rememberTheme", to: 'home#rememberTheme'
  resources :user
  get '/apply', to: 'user#application'
  get '/application', to: 'user#application'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  root "home#index"
end
