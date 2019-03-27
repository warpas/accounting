# Since configuration is shared in umbrella projects, this file
# should only configure the :warpas_accounting application itself
# and only for organization purposes. All other config goes to
# the umbrella root.
use Mix.Config

# Configure your database
config :warpas_accounting, WarpasAccounting.Repo,
  username: "postgres",
  password: "postgres",
  database: "warpas_accounting_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
