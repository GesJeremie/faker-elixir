
defmodule FakerElixir.LoremTest do

  use ExUnit.Case
  alias FakerElixir.Lorem

  test "word/0" do
    assert is_binary(Lorem.word)
  end

  test "words/0" do
      assert is_binary(Lorem.words)
  end

  test "words/1" do
    assert is_nil(Lorem.words(0))
    assert (Lorem.words(5) |> String.split(" ") |> length) == 5
  end

  test "character/0" do
    assert Lorem.character |> String.length == 1
  end

  test "characters/1 with number" do
    assert is_nil(Lorem.characters(0))
    assert (Lorem.characters(10) |> String.length) == 10
  end

  test "characters/1 with range" do
    stream = Stream.repeatedly(fn() ->

      length = Lorem.characters(1..20) |> String.length
      assert length |> between?(1, 20)

    end)

    stream |> Enum.take(50)

  end

  test "sentence/0" do

    assert Lorem.sentence |> String.ends_with?(".")

    # Start with Case
    assert Lorem.sentence |> String.first |> String.match?(~r/[A-Z]{1}/)
  end

  test "sentences/1" do
    assert is_nil(Lorem.sentences(0))

    assert (Lorem.sentences(10) |> String.split(". ") |> length) == 10

    stream = Stream.repeatedly(fn() ->

      length = (Lorem.sentences(1..30) |> String.split(". ") |> length)
      assert length |> between?(1, 30)

    end)

    stream |> Enum.take(50)
  end

  defp between?(value, left, right) do
    left <= value and value <= right
  end

end
