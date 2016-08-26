defmodule FakerElixir.PhoneTest do

  use ExUnit.Case, async: true
  alias FakerElixir.Phone


  describe "home/0" do

    test "return binary" do
      assert is_binary(Phone.home)
    end

  end

  describe "cell/0" do

    test "return binary" do
      assert is_binary(Phone.cell)
    end

  end


end
