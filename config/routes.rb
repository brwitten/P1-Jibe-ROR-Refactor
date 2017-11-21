Rails.application.routes.draw do

  root "todos#index"

  get "/todos", to: "todos#index", as: "todos"

end
