defmodule FakerElixir.Helpers.StoreTest do

  use ExUnit.Case
  alias FakerElixir.Helpers.Store


  test "store a value and retrieve it" do
    list = ["Peter", "John", "Hercules"]

    Store.set(:zombies, list)
    zombies = Store.get(:zombies)

    assert list == zombies
  end

  test "store a value and delete it" do
    Store.set(:lvl, 5)
    assert Store.get(:lvl) == 5

    Store.drop(:lvl)
    assert Store.get(:lvl) == nil
  end

  test "store a value and check if exists" do
    Store.set(:name, "peter")
    assert Store.has?(:name)

    Store.drop(:name)
    assert Store.has?(:name) == false

  end


end
