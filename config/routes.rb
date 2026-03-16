Rails.application.routes.draw do
  get("/", { :controller => "places", :action => "index" })
  resources "entries"
  resources "places"
  resources "sessions"
  resources "users"
  get "/login", to: "sessions#new"
  get "/logout", to: "sessions#destroy"
end
