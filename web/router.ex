defmodule HelloPhoenixApi.Router do
  use HelloPhoenixApi.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", HelloPhoenixApi do
    pipe_through :api # Use the default browser stack

    get "/", HelloController, :index
  end

  # Other scopes may use custom stacks.
  # scope "/api", HelloPhoenixApi do
  #   pipe_through :api
  # end
end
