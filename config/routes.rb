TwitterFavorites::Application.routes.draw do
  get "welcome/index"
  post "favorites/unfavorite", :as => :unfavorite
  
  match "/favorites" => "favorites#index", :as => :favorites
  
  match "/auth/:provider/callback" => "sessions#create"
  match "/auth/failure" => "sessions#failure"
  match "/signout" => "sessions#destroy", :as => :signout 

  root :to => "welcome#index"
end
