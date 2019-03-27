# Since configuration is shared in umbrella projects, this file
# should only configure the :warpas_accounting_web application itself
# and only for organization purposes. All other config goes to
# the umbrella root.
use Mix.Config

# General application configuration
config :warpas_accounting_web,
  ecto_repos: [WarpasAccounting.Repo],
  generators: [context_app: :warpas_accounting, binary_id: true]

# Configures the endpoint
config :warpas_accounting_web, WarpasAccountingWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "DhcTqiHyq9g9vaDyiQrj+O5Y1oVTEAeLKpTju7Gkil04Fe/a6wR2VllxXE1jPI4m",
  render_errors: [view: WarpasAccountingWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: WarpasAccountingWeb.PubSub, adapter: Phoenix.PubSub.PG2]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
