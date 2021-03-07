defmodule Doto.TodosFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Doto.Todos` context.
  """

  @doc """
  Generate a item.
  """
  def item_fixture(attrs \\ %{}) do
    {:ok, item} =
      attrs
      |> Enum.into(%{
        is_done: true,
        text: "some text"
      })
      |> Doto.Todos.create_item()

    item
  end
end
