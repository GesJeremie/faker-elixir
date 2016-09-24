defmodule FakerElixir.Helpers.App do
  @moduledoc false

  @doc """
  Keep only [0-9a-zA-Z] characters and spaces.

  ## Examples

  ```
  iex> FakerElixir.Helpers.App.keep_strict_alpha_numeric("Jérémie just killed a zombie!!")
  "Jrmie just killed a zombie"
  ```
  """
  def keep_strict_alpha_numeric(string) do
    allowed = ~w(a b c d e f g h i j k l m n o p q r s t u v w x y z 0 1 2 3 4 5 6 7 8 9 A B C D E F G H I J K L M N O P Q R S T U V W X Y Z)
    allowed = allowed ++ [" "]

    string
    |> String.split("")
    |> Enum.filter(fn x ->
        Enum.member?(allowed, x)
      end)
    |> Enum.join("")
  end

  @doc """
  Sluggify a string

  It's a naive implementation of a real slugger, but it's enough yet.

  ### Examples

  ```
  iex> FakerElixir.Helpers.App.slug("Jérémie just killed a zombie!!")
  "jeremie.just.killed.a.zombie"
  ```
  """
  def slug(string) do
    slug(string, ".")
  end

  @doc """
  Sluggify a string with the glue given

  ### Examples

  ```
  iex> FakerElixir.Helpers.App.slug("Jérémie just killed a zombie!!", "-")
  "jeremie-just-killed-a-zombie"
  ```
  """
  def slug(string, glue) do
    string
    |> remove_accents
    |> keep_strict_alpha_numeric
    |> String.trim
    |> String.downcase
    |> String.replace(" ", glue)
  end


  @doc """
  Remove accents from a string

  ### Examples

  ```
  FakerElixir.Helpers.App.remove_accents("jérémie")
  "jeremie"
  ```
  """
  def remove_accents(string) do
    string
    |> String.normalize(:nfd)
    |> String.replace(~r/[^A-z\s]/u, "")
  end


  @doc """
  Generate a random number

  ## Examples

    iex > FakerElixir.Helpers.App.rand
    0.34560389559786353
  """
  def rand do
    :rand.seed(:exs64, :os.timestamp)
    :rand.uniform()
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
    |> Enum.take_random(1)
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

    fetch_custom(method, locale)

  end

  defp fetch_custom(method, locale) do

    # The developper has the possibility
    # to hook any methods of a locale.
    #
    # We will check if he created a module
    # and the method to hook it.
    module = FakerElixir.LocalesCustom |> Module.concat(locale)

    case can_exec?(module, method) do
      false ->
        fetch_normal(method, locale)
      true ->
        apply(module, method, [])
    end

  end

  defp fetch_normal(method, locale) do

    # Build the locale module to call
    module = FakerElixir.Locales |> Module.concat(locale)

    # Check if the locale module defines the method wanted
    case can_exec?(module, method) do
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

  defp can_exec?(module, method) do
    with true <- module_exists?(module),
         true <- has_method?(module, method) do
      true
    else
      false -> false
    end
  end

  defp has_method?(module, method) do
    methods = module.module_info(:exports)

    methods |> Keyword.has_key?(method)
  end


  ##
  # Check if a module exists.
  #
  # I spent few hours on this one. Sounds like Erlang lazy load the modules.
  # The only way to know if a module really exists is to try ... to load it.
  #
  # That's a problem, if a module really doesn't exist, you don't want to try to
  # load it X times. That's why I use the Store Helper, like that we will try to
  # load it only one time.
  #
  # I guess it's not the best implementation and we should find a better way in a
  # near future.
  defp module_exists?(module) do
    cache = FakerElixir.Helpers.Store.get(module)

    case cache do
      nil ->
        loaded = Code.ensure_loaded?(module)
        FakerElixir.Helpers.Store.set(module, loaded)
        loaded
      _ ->
        cache
    end
  end

end
