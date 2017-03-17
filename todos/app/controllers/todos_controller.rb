class TodosController < ApplicationController
  def index
    @todos = Todo.all
  end

  def new
    @todo = Todo.new
  end

  def create
    @todo = Todo.new(todo_params)
    if @todo.save
      redirect_to root_path
    else
      render "new"
    end
  end

  def todo_params
    todo = params.require(:todo)
    {
      title: todo.require(:title),
    }
  end
end
