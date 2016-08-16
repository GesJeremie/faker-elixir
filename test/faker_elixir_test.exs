defmodule FakerElixirTest do
  use ExUnit.Case

  doctest FakerElixir

  test "get_locale/0" do
    FakerElixir.set_locale(:en)
    assert FakerElixir.get_locale == :en

    FakerElixir.set_locale(:fr)
    assert FakerElixir.get_locale == :fr

    FakerElixir.set_locale(:es)
    assert FakerElixir.get_locale == :fr
  end

end
