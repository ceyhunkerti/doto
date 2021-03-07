defmodule Doto.Repo.Migrations.CreateItems do
  use Ecto.Migration

  def change do
    create table(:items) do
      add :text, :string
      add :is_done, :boolean, default: false, null: false

      timestamps()
    end
  end
end
