defmodule FakerElixir.InternetTest do

  use ExUnit.Case
  alias FakerElixir.Internet

  describe "email/0" do

    test "valid email" do
      assert Regex.match?(~r/[A-Za-z.]*@[a-z]*.[a-z]*/,  Internet.email)
    end

  end

  describe "email/1" do

    test "valid email" do
      assert Regex.match?(~r/jeremie.ges@[a-z]*.[a-z]*/, Internet.email("Jeremie ges"))
    end

    test "popular return binary" do
      assert is_binary(Internet.email(:popular))
    end

  end

  describe "email/2" do

    test "popular return binary" do
      assert is_binary(Internet.email(:popular, "jeremie ges"))
    end

  end

  describe "user_name/0" do

    test "return binary" do
      assert is_binary(Internet.user_name)
    end

  end

  describe "user_name/1" do

    test "format correctly" do
      assert Internet.user_name("Jérémie GEES The awesome GUY!") == "jrmie.gees.the.awesome.guy"
    end

  end

  describe "url/0" do

    test "valid url" do
      assert Regex.match?(~r/http:\/\/www.[a-z]*.[a-z]*/, Internet.url)
    end

  end

  describe "url/1" do

    test "valid safe url" do
      assert Internet.url(:safe) |> String.slice(0, 8) == "https://"
    end

  end
  
end
