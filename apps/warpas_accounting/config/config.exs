# Since configuration is shared in umbrella projects, this file
# should only configure the :warpas_accounting application itself
# and only for organization purposes. All other config goes to
# the umbrella root.
use Mix.Config

config :warpas_accounting,
  ecto_repos: [WarpasAccounting.Repo]

import_config "#{Mix.env()}.exs"
