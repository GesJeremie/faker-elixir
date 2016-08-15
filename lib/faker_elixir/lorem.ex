defmodule FakerElixir.Lorem do
  @moduledoc """
  Generate fake data for the domain lorem
  """

  import FakerElixir.Helpers.App

  def word do
    :words
      |> fetch
      |> pick
  end


  def words(0) do
    nil
  end

  def words(number) when is_map(number) do
    number
      |> pick
      |> words
  end

  def words(number) do
    Stream.repeatedly(&word/0)
      |> Enum.take(number)
      |> Enum.join(" ")
  end

  def words do
    2..10
      |> pick
      |> words
  end


  def character do
    # Pick randomly an alpha numeric character
    ~w(a b c d e f g h i j k l m n o p q r s t u v w x y z 0 1 2 3 4 5 6 7 8 9)
      |> pick
  end


  def characters(0) do
    nil
  end

  def characters(range) when is_map(range) do
    # Pick a number in the range provided
    # Execute for the number picked
    range
      |> pick
      |> characters
  end

  def characters(number) do
    # Loop x times and get a character each time
    Stream.repeatedly(&character/0)
      |> Enum.take(number)
      |> Enum.join
  end

  def characters do
    # Pick a random number of characters
    # and execute
    2..20
      |> pick
      |> characters
  end


  def sentence do
    sentence = words(8..20)
      |> String.capitalize

    "#{sentence}."
  end

  def sentences(0) do
    nil
  end

  def sentences(range) when is_map(range) do
    range
      |> pick
      |> sentences
  end

  def sentences(number) do
    Stream.repeatedly(&sentence/0)
      |> Enum.take(number)
      |> Enum.join(" ")
  end

end
