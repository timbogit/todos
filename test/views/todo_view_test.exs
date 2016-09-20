defmodule Todos.TodoViewTest do
  use Todos.ModelCase
  import Todos.Factory
  alias Todos.TodoView

  test "todo_json" do
    todo = insert(:todo)

    rendered_todo = TodoView.todo_json(todo)

    assert rendered_todo == %{
      id: todo.id,
      title: todo.title,
      description: todo.description,
      inserted_at: todo.inserted_at,
      updated_at: todo.updated_at
    }
  end

  test "index.json" do
    todo = insert(:todo)

    rendered_todos = TodoView.render("index.json", %{todos: [todo]})

    assert rendered_todos == %{
      data: [TodoView.todo_json(todo)]
    }
  end

  test "show.json" do
    todo = insert(:todo)

    rendered_todo = TodoView.render("show.json", %{todo: todo})

    assert rendered_todo == %{
      data: TodoView.todo_json(todo)
    }
  end
end
