defmodule WarpasAccounting.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      WarpasAccounting.Repo
    ]

    Supervisor.start_link(children, strategy: :one_for_one, name: WarpasAccounting.Supervisor)
  end
end
