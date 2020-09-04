defmodule AppTestWeb.PageController do
  use AppTestWeb, :controller

  alias AppTest.News.Link

  def index(conn, _params) do
    %Link{url: "http://add.pl", description: "desc2"} |> AppTest.Repo.insert

    result = AppTest.Repo.get(Link, 2).url
    render(conn, "index.html", link: result)
  end
end
