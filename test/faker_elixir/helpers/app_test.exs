defmodule FakerElixir.Helpers.AppTest do

  use ExUnit.Case
  alias FakerElixir.Helpers.App

  describe "rand/0" do

    test "return float" do
      assert is_float(App.rand)
    end

    test "return different values" do
      assert App.rand != App.rand
    end

  end

  describe "numerify/0" do

    test "format correctly pattern" do
      result = App.numerify("#.#.#.#")

      assert result |> String.length == 7
      assert Regex.match?(~r/[0-9].[0-9].[0-9].[0-9]/, result)
    end

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

  test "keep_strict_alpha_numeric/1" do
    assert App.keep_strict_alpha_numeric("Jérémie Ges") == "Jrmie Ges"
    assert App.keep_strict_alpha_numeric("I love o'relly") == "I love orelly"
  end

  test "slug/1" do
    assert App.slug("Jérémie ges is awesome dude!") == "jrmie.ges.is.awesome.dude"
    assert App.slug(" w ") == "w"
    assert App.slug(" what's up") == "whats.up"
  end

  test "slug/2" do
    assert App.slug("Awesome slug dude", "*") == "awesome*slug*dude"
  end

end
