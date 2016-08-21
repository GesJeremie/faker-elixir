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

  describe "letterify/0" do

    test "format correctly pattern" do
      result = App.letterify("Your id is ###")

      assert result |> String.length == 14
      assert Regex.match?(~r/Your id is [a-z]{3}/, result)
    end

  end

  describe "pick/1" do

    test "pick from the enumerable" do
      cities = ["Paris", "London", "New York"]
      result = App.pick(cities)

      assert Enum.member?(cities, result)
    end

  end

  describe "fetch/1" do

    test "Fetch data from the right locale (:en)" do
      FakerElixir.set_locale(:en)

      assert App.fetch(:cities) == FakerElixir.Locales.En.cities
    end

    test "Fetch data from the right locale (:fr)" do
      FakerElixir.set_locale(:fr)

      assert App.fetch(:cities) == FakerElixir.Locales.Fr.cities
    end

    test "Fallback to default locale" do
      FakerElixir.set_locale(:fakelocale)

      assert App.fetch(:cities) == FakerElixir.Locales.En.cities
    end

  end

  describe "keep_strict_alpha_numeric/1" do

    test "format correctly" do
      assert App.keep_strict_alpha_numeric("Jérémie Ges") == "Jrmie Ges"
      assert App.keep_strict_alpha_numeric("I love o'relly") == "I love orelly"
    end

  end

  describe "slug/1" do

    test "format correctly" do
      assert App.slug("Jérémie ges is awesome dude!") == "jrmie.ges.is.awesome.dude"
      assert App.slug(" w ") == "w"
      assert App.slug(" what's up") == "whats.up"
    end

  end

  describe "slug/2" do

    test "format correctly" do
      assert App.slug("Awesome slug dude", "*") == "awesome*slug*dude"
    end
  end

end
