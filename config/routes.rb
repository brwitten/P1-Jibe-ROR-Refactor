Rails.application.routes.draw do

  root "todos#index"

  get "/todos", to: "todos#index", as: "todos"
  get "/todos/new", to: "todos#new", as: "new_todo"
  post "/todos", to: "todos#create"
  get "/todos/:id", to: "todos#show", as: "todo"
  delete "todos/:id", to: "todos#destroy"

end
