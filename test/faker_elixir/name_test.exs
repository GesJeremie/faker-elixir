defmodule FakerElixir.NameTest do

  use ExUnit.Case
  alias FakerElixir.Name

  test "first_name/0" do
    assert is_binary(Name.first_name)
  end

  test "last_name/0" do
    assert is_binary(Name.last_name)
  end

  test "name/0" do
    name = Name.name

    assert is_binary(name)
    assert (name |> String.split(" ") |> length) == 2
  end

  test "name_with_middle/0" do
    with_middle = Name.name_with_middle

    assert is_binary(with_middle)
    assert (with_middle |> String.split(" ") |> length) == 3
  end

  test "prefix/0" do
    assert is_binary(Name.prefix)
  end

  test "suffix/0" do
    assert is_binary(Name.suffix)
  end

  test "title/0" do
    assert is_binary(Name.title)
  end

end
