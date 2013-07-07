defmodule ApplicationRouter do
  use Dynamo.Router

  prepare do
    conn.fetch([:cookies, :params])
  end

  get "/" do
    conn = conn.assign(:title, "Elixir Blog")
    conn = conn.assign(:heading, "Great Heading Here")

    render conn, "index.html"
  end

  forward "/articles", to: ArticlesRouter
end
