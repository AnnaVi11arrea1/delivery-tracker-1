Rails.application.routes.draw do
  devise_for :users
root to: "delivery#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
get("/users", { :controller => "users", :action => "index" })
get("/users/:id", { :controller => "users", :action => "show" })
get("/users/:id/edit", { :controller => "users", :action => "edit" })


get("/deliveries/:the_id", { :controller => "delivery", :action => "index"})
post("/add_delivery", { :controller => "delivery", :action => "new"})


  # Defines the root path route ("/")
  # root "articles#index"
end
