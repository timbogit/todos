defmodule Todos.TodoView do
  use Todos.Web, :view

  def render("index.json", %{todos: todos}) do
    %{data: render_many(todos, Todos.TodoView, "todo.json")}
  end

  def render("show.json", %{todo: todo}) do
    %{data: render_one(todo, Todos.TodoView, "todo.json")}
  end

  def render("todo.json", %{todo: todo}) do
    todo_json(todo)
  end

  def todo_json(todo) do
    %{
      id: todo.id,
      title: todo.title,
      description: todo.description,
      inserted_at: todo.inserted_at,
      updated_at: todo.updated_at
    }
  end
end
