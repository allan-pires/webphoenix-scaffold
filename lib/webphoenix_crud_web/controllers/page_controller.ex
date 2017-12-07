defmodule WebphoenixCrudWeb.PageController do
  use WebphoenixCrudWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
