defmodule FakerElixir.BooleanTest do

  use ExUnit.Case
  alias FakerElixir.Boolean

  test "boolean/0" do
    assert is_boolean(Boolean.boolean)
  end

  test "boolean/1" do
    assert is_boolean(Boolean.boolean(0))
    assert is_boolean(Boolean.boolean(1))
    assert is_boolean(Boolean.boolean(0.4))
  end

  test "boolean/1 never return false for ratio 1" do
    results = Stream.repeatedly(fn() -> Boolean.boolean(1) end)
      |> Enum.take(500)

    assert Enum.member?(results, false) == false
  end

  test "boolean/1 never return true for ratio 0" do
    results = Stream.repeatedly(fn() -> Boolean.boolean(0) end)
      |> Enum.take(500)

    assert Enum.member?(results, true) == false
  end
end
