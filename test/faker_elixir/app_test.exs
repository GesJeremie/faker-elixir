defmodule FakerElixir.AppTest do

  use ExUnit.Case, async: true
  alias FakerElixir.App

  test "name/0" do
    assert is_binary(App.name)
  end

  test "version/0" do
    assert is_binary(App.version)
  end

  test "author/0" do
    assert is_binary(App.author)
  end

end
