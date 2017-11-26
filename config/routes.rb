Rails.application.routes.draw do

  root "todos#index"

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get "/todos", to: "todos#index", as: "todos"
  get "/todos/new", to: "todos#new", as: "new_todo"
  post "/todos", to: "todos#create"
  get "/todos/:id", to: "todos#show", as: "todo"
  delete "/todos/:id", to: "todos#destroy"

end
