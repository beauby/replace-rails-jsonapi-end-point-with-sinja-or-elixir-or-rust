# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :plug_bench_phoenix,
  ecto_repos: [PlugBenchPhoenix.Repo]

# Configures the endpoint
config :plug_bench_phoenix, PlugBenchPhoenix.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "WmJ4bPxPf7FKXn8IOdPHYR6hySiJNocBCyUODuR+O2RmwtKGlIQ2xbInj6enRJkp",
  render_errors: [view: PlugBenchPhoenix.ErrorView, accepts: ~w(html json)],
  pubsub: [name: PlugBenchPhoenix.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

config :phoenix, :format_encoders,
  "json-api": Poison

config :mime, :types, %{
  "application/vnd.api+json" => ["json-api"]
}
