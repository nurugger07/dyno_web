defmodule ArticlesRouter do
  use Dynamo.Router

  prepare do
    conn.fetch([:cookies, :params])
  end

  get "/" do
    conn = conn.assign(:title, "Elixir Blog")
    render conn, "articles.html", [heading: "Articles", articles: []]
  end
end
