defmodule FakerElixir.NumberTest do

  use ExUnit.Case, async: true
  alias FakerElixir.Number


  describe "digit/0" do

    test "return digit" do
      result = Number.digit |> Integer.to_string

      assert Regex.match?(~r/[0-9]{1}/, result)
    end

  end

  describe "digits/1" do

    test "return integer" do
      assert is_integer(Number.digits(10))
    end

  end

  describe "digits/2" do

    test "return right number of digits" do
      cases = Stream.repeatedly(fn ->
        result = Number.digits(10) |> Integer.to_string
        assert Regex.match?(~r/[0-9]{10}/, result)
      end)

      # Since digits is used in the other functions
      # let's be really sure ...
      cases |> Enum.take(100)
    end

  end

  describe "between/1" do

    test "return an integer" do
      assert is_integer(Number.between(0..10))
    end

    test "result is in the range" do
      assert Number.between(1..2) |> between?(1, 2)
    end

  end

  describe "between/2" do

    test "return an integer" do
      assert is_integer(Number.between(1, 20))
    end

    test "return a float" do
      assert is_float(Number.between(1.20, 1.22))
      assert is_float(Number.between(4, 4.56))
      assert is_float(Number.between(3.2, 5))
    end

    test "result is in the range" do
      assert Number.between(1.20, 1.34) |> between?(1.20, 1.34)
    end

  end

  describe "decimal/0" do

    test "return a 'decimal' string" do
      assert Number.decimal |> String.contains?(".")
    end

  end

  describe "decimal/1" do

    test "return right number of left digits" do
      result = Number.decimal(4)

      assert Regex.match?(~r/[0-9]{4}.[0-9]*/, result)
    end

  end

  describe "decimal/2" do

    test "return right number left/right digits" do
      result = Number.decimal(2, 2)

      assert Regex.match?(~r/[0-9]{2}.[0-9]{2}/, result)
    end

  end


  defp between?(value, min, max) do
    value >= min && value <= max
  end

end
