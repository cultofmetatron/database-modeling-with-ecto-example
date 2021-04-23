# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :grade_tracker,
  ecto_repos: [GradeTracker.Repo],
  generators: [binary_id: true]

# Configures the endpoint
config :grade_tracker, GradeTrackerWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "h41KkECDT63sGzTOBplqMTWgxFx0PoebjdNWyxQwkLRXNYD+WJ3pOD/55ykdNLdQ",
  render_errors: [view: GradeTrackerWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: GradeTracker.PubSub,
  live_view: [signing_salt: "1/EZWVTB"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
