defmodule FakerElixir.CurrencyTest do

  use ExUnit.Case, async: true
  alias FakerElixir.Currency

  test "code/0" do
    assert is_binary(Currency.code)
  end

  test "symbol/0" do
    assert is_binary(Currency.symbol)
  end

  test "name/0" do
    assert is_binary(Currency.name)
  end

  test "make/0" do
    currency = Currency.make
    assert is_map(currency)
    assert Map.has_key?(currency, :country)
    assert Map.has_key?(currency, :code)
    assert Map.has_key?(currency, :name)
    assert Map.has_key?(currency, :symbol)

  end


end
