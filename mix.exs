defmodule DynoWeb.Mixfile do
  use Mix.Project

  def project do
    [ app: :dyno_web,
      version: "0.0.1",
      dynamos: [DynoWeb.Dynamo],
      compilers: [:elixir, :dynamo, :app],
      env: [prod: [compile_path: "ebin"]],
      compile_path: "tmp/#{Mix.env}/dyno_web/ebin",
      deps: deps ]
  end

  # Configuration for the OTP application
  def application do
    [ applications: [:cowboy, :dynamo],
      mod: { DynoWeb, [] } ]
  end

  defp deps do
    [ { :cowboy, %r(.*), github: "extend/cowboy" },
      { :dynamo, "0.1.0.dev", github: "elixir-lang/dynamo" } ]
  end
end
