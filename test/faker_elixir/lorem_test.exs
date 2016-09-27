
defmodule FakerElixir.LoremTest do

  use ExUnit.Case, async: true
  alias FakerElixir.Lorem

  describe "word/0" do

    test "return binary" do
      assert is_binary(Lorem.word)
    end

  end

  describe "words/0" do

    test "return binary" do
      assert is_binary(Lorem.words)
    end

  end

  describe "words/1" do

    test "return nil for param 0" do
      assert is_nil(Lorem.words(0))
    end

    test "return binary" do
      assert is_binary(Lorem.words(2))
    end

    test "return right number of words" do
      assert (Lorem.words(5) |> String.split(" ") |> length) == 5
    end

  end

  describe "character/0" do

    test "return one character" do
      assert Lorem.character |> String.length == 1
    end

  end

  describe "characters/1" do

    test "return nil for param 0" do
      assert is_nil(Lorem.characters(0))
    end

    test "return right number of characters" do
      assert (Lorem.characters(10) |> String.length) == 10
    end

    test "return right range number of characters" do
      cases = Stream.repeatedly(fn() ->

        length = Lorem.characters(1..20) |> String.length

        assert length |> between?(1, 20)

      end)

      cases
      |> Enum.take(50)
    end

  end

  describe "sentence/0" do

    test "return correct sentence" do
      assert Lorem.sentence |> String.ends_with?(".")

      # Start with UpCase
      assert Lorem.sentence |> String.first |> String.match?(~r/[A-Z]{1}/)
    end

  end

  describe "sentences/1" do

    test "return nil for param 0" do
      assert is_nil(Lorem.sentences(0))
    end

    test "return correct number of sentence" do
      assert (Lorem.sentences(10) |> String.split(". ") |> length) == 10
    end

    test "return in the range the number of sentence" do
      cases = Stream.repeatedly(fn() ->

        length = (Lorem.sentences(1..30) |> String.split(". ") |> length)

        assert length |> between?(1, 30)

      end)

      cases
      |> Enum.take(50)
    end

  end

  describe "sentences/0" do

    # Sinces sentences is just an alias of sentences/1
    # we do a minimal test
    test "return binary" do
      assert is_binary(Lorem.sentences)
    end

  end

  defp between?(value, left, right) do
    left <= value and value <= right
  end

end
