defmodule WarpasAccountingWeb.Router do
  use WarpasAccountingWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", WarpasAccountingWeb do
    pipe_through :api
  end
end
