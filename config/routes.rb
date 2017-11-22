Rails.application.routes.draw do

  root "todos#index"

  get "/todos", to: "todos#index", as: "todos"
  get "/todos/new", to: "todos#new", as: "new_todo"
  post "/todos", to: "todos#create"

end
