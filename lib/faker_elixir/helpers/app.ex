defmodule FakerElixir.Helpers.App do

  @moduledocset false

  def rand do
    :random.seed(:erlang.now)
    :random.uniform
  end

  def numerify(pattern) do
    pattern
      |> String.split("")
      |> Enum.map_join(&(replace_hash(&1)))
  end

  defp replace_hash("#") do
    pick(0..9)
  end

  defp replace_hash(value) do
    value
  end

  def pick(enumerable) do
    enumerable
      |> Enum.shuffle
      |> Enum.at(0)
  end

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
