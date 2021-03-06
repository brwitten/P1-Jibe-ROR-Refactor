class TodosController < ApplicationController

before_action :authorize

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
      redirect_to todo_path(todo)
    end
  end

  def show
    @todo = Todo.find(params[:id])
  end

  def destroy
    @todo = Todo.find(params[:id])
    @todo.destroy
    redirect_to "/"
  end

end
