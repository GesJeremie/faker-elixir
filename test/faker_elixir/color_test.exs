defmodule FakerElixir.ColorTest do

  use ExUnit.Case, async: true
  alias FakerElixir.Color

  describe "name/0" do

    test "return binary" do
      assert is_binary(Color.name)
    end

  end

  describe "hex/0" do

    test "return valid hex" do
      assert Regex.match?(~r/#[A-Z0-9]{6}/, Color.hex)
    end

  end

  describe "make_rgb/0" do

    test "return list" do
      assert is_list(Color.make_rgb)
      assert Color.make_rgb |> length == 3
    end

    test "valid rgb" do
      [color1, color2, color3] = Color.make_rgb

      assert color1 |> between?(0, 255)
      assert color2 |> between?(0, 255)
      assert color3 |> between?(0, 255)

    end

  end

  describe "rgb/0" do

    test "valid format" do
      assert Regex.match?(~r/rgb\([0-9]{1,3},\s[0-9]{1,3},\s[0-9]{1,3}\)/, Color.rgb)
    end

  end

  describe "make_hsl/0" do

    test "return list" do
      assert is_list(Color.make_hsl)
      assert Color.make_hsl |> length == 3
    end

  end

  describe "hsl/0" do

    test "valid hsl" do
      assert Regex.match?(~r/hsl\([0-9]{1,3},\s[0-9]{1,3}%,\s[0-9]{1,3}%\)/, Color.hsl)
    end

  end

  defp between?(value, min, max) do
    value >= min && value <= max
  end

end
