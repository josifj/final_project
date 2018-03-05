Rails.application.routes.draw do
  # Routes for the Building resource:
  # CREATE
  get "/buildings/new", :controller => "buildings", :action => "new"
  post "/create_building", :controller => "buildings", :action => "create"

  # READ
  get "/buildings", :controller => "buildings", :action => "index"
  get "/buildings/:id", :controller => "buildings", :action => "show"

  # UPDATE
  get "/buildings/:id/edit", :controller => "buildings", :action => "edit"
  post "/update_building/:id", :controller => "buildings", :action => "update"

  # DELETE
  get "/delete_building/:id", :controller => "buildings", :action => "destroy"
  #------------------------------

  devise_for :users
  # Routes for the User resource:
  # READ
  get "/users", :controller => "users", :action => "index"
  get "/users/:id", :controller => "users", :action => "show"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
