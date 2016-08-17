defmodule FakerElixir.Mixfile do
  use Mix.Project

  def project do
    [app: :faker_elixir,
     version: "0.1.0",
     elixir: "~> 1.3",
     description: description(),
     package: package(),
     name: "FakerElixir",
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
    [{:ex_doc, "~> 0.10", only: :docs}]
  end

  defp description do
    """
    FakerElixir is an Elixir package that generates fake data for you. Whether you need to seed your database, create factories for your project, FakerElixir is here for you.
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
