defmodule AppTestWeb.SimpleQueueController do
  use AppTestWeb, :controller

  def index(conn, _params) do
    SimpleQueue.start_link([1, 2, 3, 4, 5, 6, 7, 8, 9])
    # SimpleQueue.dequeue()
    # [a | b] = SimpleQueue.queue
    list = SimpleQueue.queue()

    render(conn, "index.html", list: list)
  end
end
