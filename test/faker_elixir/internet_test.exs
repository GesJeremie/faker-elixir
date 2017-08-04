defmodule FakerElixir.InternetTest do

  use ExUnit.Case, async: true
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

    test "school return binary" do
      assert is_binary(Internet.email(:school))
    end

  end

  describe "email/2" do

    test "popular return binary" do
      assert is_binary(Internet.email(:popular, "jeremie ges"))
    end

    test "school return binary" do
      assert is_binary(Internet.email(:school, "harry potter"))
    end

  end

  describe "user_name/0" do

    test "return binary" do
      assert is_binary(Internet.user_name)
    end

  end

  describe "user_name/1" do

    test "format correctly" do
      assert Internet.user_name("Jérémie GEES The awesome GUY!") == "jeremie.gees.the.awesome.guy"
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

  describe "password/1" do

    test "return binary :weak" do
      assert is_binary(Internet.password(:weak))
    end

    test "return binary :normal" do
      assert is_binary(Internet.password(:normal))
    end

    test "return binary :strong" do
      assert is_binary(Internet.password(:strong))
    end

  end

  describe "user_agent/0" do

    test "return binary user agent" do
      assert is_binary(Internet.user_agent)
    end

  end

  describe "user_agent/1" do
    
    test "return binary user agent" do
      assert is_binary(Internet.user_agent(:chrome))
    end

    test "raise for invalid type" do
      assert_raise ArgumentError, fn -> Internet.user_agent(:fake_type) end
    end

    test "return user agent from right type" do
      user_agents = FakerElixir.Helpers.App.fetch(:user_agents)
      user_agent = Internet.user_agent(:safari)

      assert Enum.member?(user_agents[:safari], user_agent)
    end

  end

end
