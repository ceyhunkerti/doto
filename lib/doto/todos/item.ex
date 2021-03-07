defmodule Doto.Todos.Item do
  use Ecto.Schema
  import Ecto.Changeset

  schema "items" do
    field :is_done, :boolean, default: false
    field :text, :string

    timestamps()
  end

  @doc false
  def changeset(item, attrs) do
    item
    |> cast(attrs, [:text, :is_done])
    |> validate_required([:text, :is_done])
  end
end
