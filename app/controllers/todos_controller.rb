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

  def show
    @todo = Todo.find(params[:id])
  end

  def destroy
    todo_id = params[:id]
    todo = Todo.find_by_id(todo_id)
    todo.destroy
    redirect_to "/"
  end

end
