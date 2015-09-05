defmodule HelloPhoenix.HelloController do
  use HelloPhoenix.Web, :controller

  def index(conn, params) do
    render conn, :index, message: params["message"]
  end

  def show(conn, %{"messenger" => messenger}) do
    render conn, "show.html", messenger: messenger
  end

  def test(conn, _params) do
    render conn, :test
  end
end
