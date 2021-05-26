# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
use Mix.Config

# This configuration is loaded before any dependency and is restricted
# to this project. If another project depends on this project, this
# file won't be loaded nor affect the parent project. For this reason,
# if you want to provide default values for your application for
# 3rd-party users, it should be done in your "mix.exs" file.

# You can configure your application as:
#
#     config :ex_cluster, key: :value
#
# and access this configuration in your application as:
#
#     Application.get_env(:ex_cluster, :key)
#
# You can also configure a 3rd-party app:
#
#     config :logger, level: :info
#

# Configures the endpoint
# config :ex_cluster, MngoAppBuilderWeb.Endpoint,

#   url: [host: "localhost"],
#   secret_key_base: "7uWNjnyXEUsD/jnwTjSXyFdM0eow+EYIAdDsufhD/cEfxMW/aztK6fEGgHAE+m3E",
#   render_errors: [view: MngoAppBuilderWeb.ErrorView, accepts: ~w(json), layout: false],
#   pubsub_server: MngoAppBuilder.PubSub,
#   live_view: [signing_salt: "qKEM2UlV"]

# config :ex_cluster, TestElixirHttpWeb.Endpoint,
#   url: [host: "localhost"],
#   secret_key_base: "OgQC29FMFmxViTIgojv+fQ5S9gc0pK9v+WzGF2NZM8RdgcQMHoqpXINaB/gsoMMS",
#   render_errors: [view: TestElixirHttpWeb.ErrorView, accepts: ~w(html json)],
#   pubsub: [name: TestElixirHttp.PubSub,
#            adapter: Phoenix.PubSub.PG2]

# These are Settings as key/value in Ecto Setting table but they can be specified here
# for development purposes. Never store them here and then check in this code to source control
# config :sendgrid, api_key: ""
# config :slack, api_token: ""

# config :friends, ecto_repos: [Friends.Repo]
# OR use a URL to connect instead
# url: "postgres://postgres:postgres@localhost/ecto_simple"

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id],
  level: :info

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# It is also possible to import configuration files, relative to this
# directory. For example, you can emulate configuration per environment
# by uncommenting the line below and defining dev.exs, test.exs and such.
# Configuration from the imported file will override the ones defined
# here (which is why it is important to import them last).
#
import_config "#{Mix.env()}.exs"
