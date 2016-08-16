defmodule FakerElixir.Helpers.AppTest do

  use ExUnit.Case
  alias FakerElixir.Helpers.App

  test "rand/0" do
    rand1 = App.rand
    rand2 = App.rand
    rand3 = App.rand

    assert is_float(rand1)
    assert is_float(rand2)
    assert is_float(rand3)

    assert rand1 != rand2 && rand2 != rand3
  end

  test "numerify/0" do
    numerify = App.numerify("###")
    assert String.length(numerify) == 3
    assert Regex.match?(~r/[0-9]{3}/, numerify)

    numerify = App.numerify("###.")
    assert String.length(numerify) == 4
    assert Regex.match?(~r/[0-9]{3}./, numerify)

    numerify = App.numerify("#.#.#.#")
    assert String.length(numerify) == 7
    assert Regex.match?(~r/[0-9].[0-9].[0-9].[0-9]/, numerify)
  end

  test "letterify/0" do
    letterify = App.letterify("Apt. ###")

    assert String.length(letterify) == 8
    assert Regex.match?(~r/Apt. [a-z]{3}/, letterify)
  end

  test "pick/1" do
    cities = ["Paris", "London", "New York"]
    picked = App.pick(cities)

    assert is_binary(picked)
    assert Enum.member?(cities, picked)
  end

  test "fetch/1" do
    FakerElixir.set_locale(:en)
    cities = App.fetch(:cities)

    assert is_list(cities)
    assert (cities |> Enum.at(0)) == "New York City"

    FakerElixir.set_locale(:fr)
    cities = App.fetch(:cities)

    assert is_list(cities)
    assert (cities |> Enum.at(0)) == "Paris"

    # Since that method doesn't exist in the locale :fr
    # it should fallback to the method :en
    apps = App.fetch(:apps)

    assert is_list(apps)
    assert (apps |> Enum.at(0)) == "Lemonid"
  end


end
