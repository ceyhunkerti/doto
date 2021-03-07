defmodule Doto.Repo do
  use Ecto.Repo,
    otp_app: :doto,
    adapter: Ecto.Adapters.Postgres
end
