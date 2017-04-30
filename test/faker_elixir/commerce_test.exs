defmodule FakerElixir.CommerceTest do

  use ExUnit.Case, async: true
  alias FakerElixir.Commerce

  describe "coupon/0" do

    test "return binary" do
      assert is_binary(Commerce.coupon)
    end

  end

  describe "coupon/1" do
    
    test "return binary" do
      assert is_binary(Commerce.coupon(2));
    end

    test "return right number of digits" do
      assert Regex.match?(~r/[A-Za-z]*[0-9]{2}/, Commerce.coupon(2));
      assert Regex.match?(~r/[A-Za-z]*[0-9]{50}/, Commerce.coupon(50));
    end

  end

  describe "product/0" do
    
    test "return binary" do
      assert is_binary(Commerce.product)
    end

    test "return three words" do
      words = Commerce.product |> String.split(" ") |> length 
      assert words == 3
    end

  end

  describe "sku/0" do
    
    test "return binary" do
      assert is_binary(Commerce.sku)
    end

    test "is 8 chars" do
      assert (Commerce.sku |> String.length) == 8
    end

    test "is upcase" do
      sku = Commerce.sku 

      assert sku == String.upcase(sku)
    end

  end

end
