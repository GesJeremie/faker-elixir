defmodule FakerElixir.BooleanTest do

  use ExUnit.Case, async: true
  alias FakerElixir.Boolean

  describe "boolean/0" do

    test "return boolean" do
        assert is_boolean(Boolean.boolean)
    end

  end

  describe "boolean/1" do

    test "return boolean" do
      assert is_boolean(Boolean.boolean(0.2))
    end

    test "never return false for ratio 1" do
      cases = Stream.repeatedly(fn() -> Boolean.boolean(1) end)
      results =
        cases
        |> Enum.take(1000)

      assert Enum.member?(results, false) == false
    end

    test "never return true for ratio 0" do
      cases = Stream.repeatedly(fn() -> Boolean.boolean(0) end)
      results =
        cases
        |> Enum.take(1000)

      assert Enum.member?(results, true) == false
    end

  end

end
