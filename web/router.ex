defmodule HelloPhoenixApi.Router do
  use HelloPhoenixApi.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  scope "/", HelloPhoenixApi do
    pipe_through :api # Use the default browser stack

    get "/", HelloController, :index
  end

  scope "/", HelloPhoenixApi do
    pipe_through :browser # Use the default browser stack

    get "/hello/:messenger", HelloController, :show
  end

  # Other scopes may use custom stacks.
  # scope "/api", HelloPhoenixApi do
  #   pipe_through :api
  # end
end
