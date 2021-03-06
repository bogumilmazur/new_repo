# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :appTest,
  ecto_repos: [AppTest.Repo]

# Configures the endpoint
config :appTest, AppTestWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "VHfZCsSC3/5b4NIeWs5O9hyO47zeSCvgjrtyP9T7YdDQg2jFyG6BgBbcZojYBstd",
  render_errors: [view: AppTestWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: AppTest.PubSub,
  live_view: [signing_salt: "wk5QiNCW"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
