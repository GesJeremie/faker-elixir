defmodule FakerElixir.BankTest do

  use ExUnit.Case, async: true
  alias FakerElixir.Bank

  describe "make_credit_card/0" do

    test "return struct" do
      assert is_map(Bank.make_credit_card)
    end

    test "return right keys" do
      card = Bank.make_credit_card

      assert Map.has_key?(card, :type)
      assert Map.has_key?(card, :expiration_date)
      assert Map.has_key?(card, :number)
      assert Map.has_key?(card, :cvv)
      assert Map.has_key?(card, :number)
    end

  end

  describe "credit_card_number/0" do

    test "return numeric string" do
      number = Bank.credit_card_number

      assert is_binary(number)
      assert Regex.match?(~r/[0-9]*/, number)
    end

  end

  describe "credit_card_type/0" do

    test "return binary" do
      assert is_binary(Bank.credit_card_type)
    end

  end

  describe "credit_card_cvv" do

    test "return numeric string" do
      cvv = Bank.credit_card_cvv

      assert is_binary(cvv)
      assert Regex.match?(~r/[0-9]*/, cvv)
    end

  end

  describe "credit_card_expiration_date/0" do

    test "return binary" do
      assert is_binary(Bank.credit_card_expiration_date)
    end

  end

  describe "credit_card_expiration_date/1" do

    test "return binary" do
      assert is_binary(Bank.credit_card_expiration_date(:valid))
      assert is_binary(Bank.credit_card_expiration_date(:invalid))
    end

  end




end
