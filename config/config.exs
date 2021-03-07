# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
import Config

config :doto,
  ecto_repos: [Doto.Repo]

# Configures the endpoint
config :doto, DotoWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Grp9o9v9vNFcp0/UdC8qhgD2H2FD8jN98TjJZv/m6pEdtrMOpFdqy3MsYDz0RpAJ",
  render_errors: [view: DotoWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Doto.PubSub,
  live_view: [signing_salt: "Dmtnm/Ue"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{config_env()}.exs"
