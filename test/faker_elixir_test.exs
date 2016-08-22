defmodule FakerElixirTest do
  use ExUnit.Case, async: true

  test "set locale and retrieve it" do
    FakerElixir.set_locale(:en)
    assert FakerElixir.get_locale == :en

    FakerElixir.set_locale(:fr)
    assert FakerElixir.get_locale == :fr
  end

end
