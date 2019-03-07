defmodule WorkspaceTest.MixProject do
  use Mix.Project

  def project do
    [
      app: :workspace_test,
      compilers: [:rustler] ++ Mix.compilers(),
      deps: deps(),
      elixir: "~> 1.7",
      rustler_crates: [workspace_test: []],
      start_permanent: Mix.env() == :prod,
      version: "0.1.0",
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:rustler, "~> 0.20.0"},
    ]
  end
end
