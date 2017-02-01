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

end
