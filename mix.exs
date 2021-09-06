defmodule Exlivery.MixProject do
  use Mix.Project

  def project do
    [
      app: :exlivery,
      version: "0.1.0",
      elixir: "~> 1.12",
      elixirc_paths: elixirc_paths(Mix.env()),
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger, :decimal, :crypto]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:credo, "~> 1.5.6", only: [:dev, :test], runtime: false},
      {:decimal, "~>2.0.0"},
      {:ex_machina, "~> 2.7.0"},
      {:elixir_uuid, "~> 1.2.1"}
    ]
  end

  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_), do: ["lib"]
end
