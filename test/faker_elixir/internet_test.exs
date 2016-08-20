defmodule FakerElixir.InternetTest do

  use ExUnit.Case
  alias FakerElixir.Internet

  test "email/0" do
    cases = Stream.repeatedly(fn ->
      email = Internet.email
      assert Regex.match?(~r/[A-Za-z.]*@[a-z]*.[a-z]*/, email)
    end)

    cases
      |> Enum.take(50)
  end

  test "email/1" do
    email = Internet.email("Jeremie ges")
    assert Regex.match?(~r/jeremie.ges@[a-z]*.[a-z]*/, email)

    assert is_binary(Internet.email(:popular))
  end

  test "email/2" do
    assert is_binary(Internet.email(:popular, "jeremie ges"))
  end

  test "user_name/0" do
    assert is_binary(Internet.user_name)
  end

  test "user_name/1" do
    assert Internet.user_name("Jérémie GEES The awesome GUY!") == "jrmie.gees.the.awesome.guy"
  end

  test "url/0" do
    cases =
      Stream.repeatedly(fn ->
        url = Internet.url
        assert Regex.match?(~r/http:\/\/www.[a-z]*.[a-z]*/, url)
      end)

    cases
      |> Enum.take(50)
  end

  test "url/1" do
    url_safe = Internet.url(:safe)

    assert url_safe |> String.slice(0, 8) == "https://"

  end


end
