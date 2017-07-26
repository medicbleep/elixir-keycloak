defmodule Keycloak.Mixfile do
  use Mix.Project

  def project do
    [app: :keycloak,
     version: "0.1.0",
     elixir: "~> 1.4",
     name: "elixir-keycloak",
     description: "Library for interacting with a Keycloak authorization server",
     package: package(),
     deps: deps()]
  end

  # Configuration for the OTP application
  def application do
    [extra_applications: [:logger, :oauth2]]
  end

  defp deps do
    [{:joken, "~> 1.4"},
     {:oauth2, "~> 0.9.0"},
     {:plug, "~> 1.4"},
     {:poison, "~> 3.1"},
     {:credo, "~> 0.8", only: [:dev, :test], runtime: false},
     {:ex_doc, "~> 0.16.2", only: :dev}]
  end

  defp package do
    [maintainers: ["Matthew McFarland"],
     licenses: ["MIT"],
     links: %{"Github" => "https://github.com/vanetix/slack_command"}]
  end
end