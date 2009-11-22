ActionController::Routing::Routes.draw do |map|
  map.resources :newsppapperorders
  map.resources :addsblocks
  map.resources :newspappers
  map.resources :addsses
  
  map.resources :user_sessions

  map.resources :users

  map.login "login", :controller => "user_sessions", :action => "new"
  map.logout "logout", :controller => "user_sessions", :action => "destroy"

  map.root :controller => "welcome"

  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
