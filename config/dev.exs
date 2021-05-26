use Mix.Config


# Watch static and templates for browser reloading.
# config :ex_cluster, TestElixirHttpWeb.Endpoint,
#   live_reload: [
#     patterns: [
#       ~r{priv/static/.*(js|css|png|jpeg|jpg|gif|svg)$},
#       ~r{priv/gettext/.*(po)$},
#       ~r{lib/test_elixir_http_web/views/.*(ex)$},
#       ~r{lib/test_elixir_http_web/templates/.*(eex)$}
#     ]
#   ]

# Do not include metadata nor timestamps in development logs
config :logger, :console, format: "[$level] $message\n"

# Set a higher stacktrace during development. Avoid configuring such
# in production as building large stacktraces may be expensive.


# Initialize plugs at runtime for faster development compilation
# config :phoenix, :plug_init_mode, :runtime
