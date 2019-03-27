defmodule WarpasAccounting.Repo do
  use Ecto.Repo,
    otp_app: :warpas_accounting,
    adapter: Ecto.Adapters.Postgres
end
