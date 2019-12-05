defmodule HelloPhoenixApi.HelloController do
  use HelloPhoenixApi.Web, :controller

  def index(conn, _params) do
    render conn, "index.json"
  end

  def show(conn, %{"messenger" => messenger}) do
    render(conn, "show.html", messenger: messenger)
  end
end