defmodule FakerElixir.Mixfile do
  use Mix.Project

  def project do
    [app: :faker_elixir_octopus,
     version: "0.12.0",
     elixir: "~> 1.3",
     description: description(),
     package: package(),
     name: "Faker Elixir (octopus)",
     source_url: "https://github.com/GesJeremie/faker-elixir",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps()]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger],
     mod: {FakerElixir, []}]
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
    [
      {:inch_ex, "~> 0.4", only: [:dev, :test]},
      {:ex_doc, "~> 0.10", only: :dev}
    ]
  end

  defp description do
    """
    FakerElixir generates fake data for you.
    """
  end

  defp package do
    %{
      files: ["lib", "mix.exs", "mix.lock"],
      maintainers: ["Ges Jeremie"],
      licenses: ["MIT"],
      links: %{"Github" => "https://github.com/GesJeremie/faker-elixir"}
    }
  end
end
