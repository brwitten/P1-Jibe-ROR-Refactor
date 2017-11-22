class TodosController < ApplicationController

  def index
    @todo = Todo.all
  end

  def new
    @todo = Todo.new
  end

  def create
    todo_params = params.require(:todo).permit(:item)
    todo = Todo.new(todo_params)

    if todo.save
      redirect_to "/"
    end
  end


end
