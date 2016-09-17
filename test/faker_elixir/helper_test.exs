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

  describe "unique/2" do

    test "return result simple function" do
      result = Helper.unique!(:simple_func, fn -> 2 + 2 end)
      assert result == 4
    end

    test "return result faker elixir function" do
      result = Helper.unique!(:faker_func, fn -> FakerElixir.Internet.email(:popular) end)
      assert result |> String.contains?("@")
    end

    test "raise exception when overflow" do
      Helper.unique!(:emails, fn -> "zombie1@gmail.com" end)
      Helper.unique!(:emails, fn -> "zombie2@gmail.com" end)

      assert_raise OverflowError, "Impossible to generate an unique value", fn ->
        Helper.unique!(:emails, fn -> "zombie1@gmail.com" end)
      end
    end

    test "should not raise overflow" do
      stream = Stream.repeatedly(fn ->
        Helper.unique!(:digits, fn -> FakerElixir.Number.digit end)
      end)

      assert stream |> Enum.take(10)
    end

    test "should raise overflow" do
      stream = Stream.repeatedly(fn ->
        Helper.unique!(:digits2, fn -> FakerElixir.Number.digit end)
      end)

      assert_raise OverflowError, "Impossible to generate an unique value", fn ->
        assert stream |> Enum.take(11)
      end
    end

    test "should generate only unique values" do
      stream = Stream.repeatedly(fn -> 
        Helper.unique!(:names, fn -> FakerElixir.Internet.email(:popular) end)
      end)

      list = stream |> Enum.take(200)
      filtered = Enum.uniq(list)
      
      assert length(list) == length(filtered)
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
