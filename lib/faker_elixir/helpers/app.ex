defmodule FakerElixir.Helpers.App do
  @moduledoc false

  @doc """
  Generate a random number

  ## Examples

    iex > FakerElixir.Helpers.App.rand
    0.34560389559786353
  """
  def rand do
    :random.seed(:erlang.now)
    :random.uniform
  end

  
  @doc """
  Fill a pattern with random number

  ## Examples

    iex > FakerElixir.Helpers.App.numerify("Apt. ###")
    "Apt. 902"

    iex > FakerElixir.Helpers.App.numerify("06.##.##.##.##")
    "06.67.18.21.27"
  """
  def numerify(pattern) do
    pattern
      |> String.split("")
      |> Enum.map_join(&(replace_hash(&1, :number)))
  end

  @doc """
  Fill a pattern with random letters

  ## Examples

    iex > FakerElixir.Helpers.App.letterify("###")
    "ahh"

    iex > FakerElixir.Helpers.App.letterify("#.#.#.#")
    "k.e.n.u"
  """
  def letterify(pattern) do
    pattern
      |> String.split("")
      |> Enum.map_join(&(replace_hash(&1, :letter)))
  end


  defp replace_hash("#", :number) do
    pick(0..9)
  end

  defp replace_hash("#", :letter) do
    pick(~w(a b c d e f g h i j k l m n o p q r s t u v w x y z))
  end

  defp replace_hash(value, _) do
    value
  end

  @doc """
  Pick randomly a value in an enumerable

  ## Examples

    iex > FakerElixir.Helpers.App.pick(["paris", "athens", "london"])
    "london"

    iex > FakerElixir.Helpers.App.pick(0..100)
    51
  """
  def pick(enumerable) do
    enumerable
      |> Enum.shuffle
      |> Enum.at(0)
  end

  @doc """
  FakerElixir needs to manage the concept of "locales", `fetch/1` is useful
  to retrieve the data wanted for the current locale. If the locale targeted
  doesn't provide the data wanted, we just fallback to the default locale (en)

  ## Examples

    iex >  FakerElixir.Helpers.App.fetch(:cities)
    ["New York City", "Los Angeles", "San Francisco", "Washington D.C", "Chicago",
    "Boston", "Seattle", "Houston", "Detroit", "New Orleans", "Baltimore",
    "Austin", "San Diego", "Portland", "Philadelphia", "Denver", "Minneapolis",
    "San Jose", "Oakland", "Dallas", "Kansas City", "Miami", "Nashville",
    "Atlanta", "Albuquerque", "Charlotte", "Memphis", "Milwaukee", "Raleigh",
    "Cleveland", "Columbus", "El Paso", "Phoenix", "Tucson", "Las Vegas",
    "Louisville", "Fort Worth", "Wichita", "Tulsa", "Jacksonville"]

    iex > FakerElixir.set_locale(:fr)
    :ok
    iex > FakerElixir.Helpers.App.fetch(:cities)
    ["Paris", "Marseille", "Lyon", "Toulouse", "Nice", "Nantes", "Strasbourg",
     "Montpellier", "Bordeaux", "Lille", "Rennes", "Reims", "Le Havre",
     "Saint-Étienne", "Toulon", "Grenoble", "Dijon", "Angers", "Saint-Denis",
     "Villeurbanne", "Le Mans", "Aix-en-Provence", "Brest", "Nîmes", "Limoges",
     "Clermont-Ferrand", "Tours", "Amiens", "Metz", "Perpignan", "Besançon",
     "Orléans", "Boulogne-Billancourt", "Mulhouse", "Rouen", "Caen", "Nancy",
     "Saint-Denis", "Saint-Paul", "Montreuil", "Argenteuil", "Roubaix",
     "Dunkerque14", "Tourcoing", "Nanterre", "Avignon", "Créteil", "Poitiers",
     "Fort-de-France", "Courbevoie", ...]

  """
  def fetch(method) do

    # Fetch the current locale
    locale = get_locale()

    # Build the locale module to call
    module = FakerElixir.Locales
      |> Module.concat(locale)

    # Check if the locale module defines the method wanted
    case module |> has_method?(method) do
      false ->

        # Fallback to the default locale
        apply(FakerElixir.Locales.En, method, [])

      true ->

        # Call the method for the current locale
        apply(module, method, [])
    end

  end

  defp get_locale do
    FakerElixir.get_locale
     |> Atom.to_string
     |> String.capitalize
  end

  defp has_method?(module, method) do
    methods = module.module_info(:exports)

    Keyword.has_key?(methods, method)
  end

end
