# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

#General application configuration
config :sling,
  ecto_repos: [Sling.Repo]

# Configures the endpoint
config :sling, Sling.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "FLD64BhQ2d5qHQ3pkdsDFe6C0tqyZlOY8j6PIXcp5eCeTWDb6S/mndOdzIQ+f+NL",
  render_errors: [view: Sling.ErrorView, accepts: ~w(json)],
  pubsub: [name: Sling.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
#import_config "#{Mix.env}.exs"
#import_config "dev.exs"

config :sling, Sling.Repo,
  adapter:       MssqlEcto,
  database:      "SlingDB",
  username:      "sa",
  password:      "@ihikeallday1",
  hostname:      "localhost",
  instance_name: "MSSQLSERVER",
  port:          "1433",
  pool_size:     10,
  odbc_driver: "{ODBC Driver 13 for SQL Server}"
 # pool: Ecto.Adapters.SQL.Sandbox



