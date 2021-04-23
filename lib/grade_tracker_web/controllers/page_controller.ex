defmodule GradeTrackerWeb.PageController do
  use GradeTrackerWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
