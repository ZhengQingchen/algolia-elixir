defmodule Algolia.Mixfile do
  use Mix.Project

  def project do
    [app: :algolia,
     version: "0.3.0",
     description: "Elixir implementation of Algolia Search API",
     elixir: "~> 1.2",
     package: package,
     test_coverage: [tool: ExCoveralls],
     deps: deps]
  end

  def package do
    [
      maintainers: ["Sikan He"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/sikanhe/algolia-elixir"}
    ]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger, :hackney]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [{:hackney, "~> 1.6.0"},
     {:poison, "~> 1.5"},
     {:excoveralls, "~> 0.5.1", only: :test},
     {:ex_doc, "~> 0.11", only: :dev},
     {:markdown, github: "devinus/markdown", only: :dev},
     {:earmark, "~> 0.2.1", only: :dev}]
  end
end
