# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :webphoenix_crud,
  ecto_repos: [WebphoenixCrud.Repo]

# Configures the endpoint
config :webphoenix_crud, WebphoenixCrudWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "d3n4JsqtMpz8ZkXhlDlZSJS76moqlrt6Da8IKGkQbeT91iYMOPMRfi6mXWI6WnZD",
  render_errors: [view: WebphoenixCrudWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: WebphoenixCrud.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
