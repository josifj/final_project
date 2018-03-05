Rails.application.routes.draw do
  root :to => "buildings#index"
  # Routes for the Shortlist resource:
  # CREATE
  get "/shortlists/new", :controller => "shortlists", :action => "new"
  post "/create_shortlist", :controller => "shortlists", :action => "create"

  # READ
  get "/shortlists", :controller => "shortlists", :action => "index"
  get "/shortlists/:id", :controller => "shortlists", :action => "show"

  # UPDATE
  get "/shortlists/:id/edit", :controller => "shortlists", :action => "edit"
  post "/update_shortlist/:id", :controller => "shortlists", :action => "update"

  # DELETE
  get "/delete_shortlist/:id", :controller => "shortlists", :action => "destroy"
  #------------------------------

  # Routes for the Type resource:
  # CREATE
  get "/types/new", :controller => "types", :action => "new"
  post "/create_type", :controller => "types", :action => "create"

  # READ
  get "/types", :controller => "types", :action => "index"
  get "/types/:id", :controller => "types", :action => "show"

  # UPDATE
  get "/types/:id/edit", :controller => "types", :action => "edit"
  post "/update_type/:id", :controller => "types", :action => "update"

  # DELETE
  get "/delete_type/:id", :controller => "types", :action => "destroy"
  #------------------------------

  # Routes for the Category resource:
  # CREATE
  get "/categories/new", :controller => "categories", :action => "new"
  post "/create_category", :controller => "categories", :action => "create"

  # READ
  get "/categories", :controller => "categories", :action => "index"
  get "/categories/:id", :controller => "categories", :action => "show"

  # UPDATE
  get "/categories/:id/edit", :controller => "categories", :action => "edit"
  post "/update_category/:id", :controller => "categories", :action => "update"

  # DELETE
  get "/delete_category/:id", :controller => "categories", :action => "destroy"
  #------------------------------

  # Routes for the Listing resource:
  # CREATE
  get "/listings/new", :controller => "listings", :action => "new"
  post "/create_listing", :controller => "listings", :action => "create"

  # READ
  get "/listings", :controller => "listings", :action => "index"
  get "/listings/:id", :controller => "listings", :action => "show"

  # UPDATE
  get "/listings/:id/edit", :controller => "listings", :action => "edit"
  post "/update_listing/:id", :controller => "listings", :action => "update"

  # DELETE
  get "/delete_listing/:id", :controller => "listings", :action => "destroy"
  #------------------------------

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
