defmodule FakerElixir.HelperTest do

  use ExUnit.Case, async: true
  alias FakerElixir.Helper

  describe "letterify/1" do

    test "return binary" do
      assert is_binary(Helper.letterify("###"))
    end

    test "format correclty" do
      result = Helper.letterify("###")
      assert Regex.match?(~r/[a-z]{3}/, result)
    end

  end

  describe "numerify/1" do

    test "return binary" do
      assert is_binary(Helper.numerify("###"))
    end

    test "format correclty" do
      result = Helper.numerify("###")
      assert Regex.match?(~r/[0-9]{3}/, result)
    end

  end

  describe "cycle/2" do

    test "basic cycle" do
      assert Helper.cycle(:fake, ["peter", "paris", "london"]) == "peter"
      assert Helper.cycle(:fake, ["peter", "paris", "london"]) == "paris"
      assert Helper.cycle(:fake, ["peter", "paris", "london"]) == "london"
      assert Helper.cycle(:fake, ["peter", "paris", "london"]) == "peter"
      assert Helper.cycle(:fake, ["peter", "paris", "london"]) == "paris"
      assert Helper.cycle(:fake, ["peter", "paris", "london"]) == "london"
    end

    test "basic seed" do
      warriors =
        Stream.repeatedly(fn() -> fixture(:warrior) end)
        |> Enum.take(5)

      assert warriors |> Enum.at(0) == %{name: "anubis", lvl: 10}
      assert warriors |> Enum.at(1) == %{name: "zeus", lvl: 25}
      assert warriors |> Enum.at(2) == %{name: "behamut", lvl: 90}
      assert warriors |> Enum.at(3) == %{name: "anubis", lvl: 10}
      assert warriors |> Enum.at(4) == %{name: "zeus", lvl: 25}

    end

  end

  defp fixture(:warrior) do
    %{
      name: Helper.cycle(:name, ["anubis", "zeus", "behamut"]),
      lvl: Helper.cycle(:lvl, [10, 25, 90])
    }
  end

end
