Rails.application.routes.draw do
  devise_for :users
root to: "delivery#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
get("/users", { :controller => "users", :action => "index" })
get("/users/:id", { :controller => "users", :action => "show" })
get("/users/:id/edit", { :controller => "users", :action => "edit" })


get("/deliveries", { :controller => "delivery", :action => "index"})
post("/insert_delivery", { :controller => "delivery", :action => "create"})
get("/delete_delivery/:id", { :controller => "delivery", :action => "delete"})
get("/modify_delivery/:id", { :controller => "delivery", :action => "update"})

  # Defines the root path route ("/")
  # root "articles#index"
end
