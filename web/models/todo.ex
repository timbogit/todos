defmodule Todos.Todo do
  use Todos.Web, :model

  schema "todos" do
    field :title
    field :description

    timestamps
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:title, :description])
    |> validate_required([:title, :description])
  end
end
