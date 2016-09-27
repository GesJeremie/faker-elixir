defmodule FakerElixir.Lorem do
  @moduledoc """
  Generate fake data for the domain lorem
  """

  import FakerElixir.Helpers.App

  @doc """
  Return a word

  ## Examples

  ```
  iex> FakerElixir.Lorem.word
  "et"
  ```
  """
  def word do
    :words
    |> fetch
    |> pick
  end

  @doc false
  def words(0) do
    nil
  end

  @doc """
  Return ```x``` number of words within the ```range``` given or ```number``` given

  ## Examples

  ```
  iex> FakerElixir.Lorem.words(2..4)
  "laudantium rem saepe qui"
  ```

  ```
  iex> FakerElixir.Lorem.words(3)
  "sapiente optio dolor"
  ```
  """
  def words(range) when is_map(range) do
    range
    |> pick
    |> words
  end

  def words(number) do
    Stream.repeatedly(&word/0)
    |> Enum.take(number)
    |> Enum.join(" ")
  end

  @doc """
  Return some words

  ## Examples

  ```
  iex> FakerElixir.Lorem.words
  "pariatur ea eos quibusdam velit debitis et"
  ```
  """
  def words do
    2..10
    |> pick
    |> words
  end


  @doc """
  Return an alpha numeric character

  ## Examples

  ```
  iex> FakerElixir.Lorem.character
  "c"
  ```
  """
  def character do
    # Pick randomly an alpha numeric character
    ~w(a b c d e f g h i j k l m n o p q r s t u v w x y z 0 1 2 3 4 5 6 7 8 9)
    |> pick
  end

  @doc false
  def characters(0) do
    nil
  end

  @doc """
  Return ```x``` number of alpha numeric characters within the ```range``` given or ```number``` given

  ## Examples

  ```
  iex> FakerElixir.Lorem.characters(10..30)
  "rhch0bceu38240vds"
  ```

  ```
  iex> FakerElixir.Lorem.characters(10)
  "tw3aw6n3ez"
  ```
  """
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

  @doc """
  Return some alpha numeric characters

  ## Examples

  ```
  iex> FakerElixir.Lorem.characters
  "0ycp0x"
  ```
  """
  def characters do
    # Pick a random number of characters
    # and execute
    2..20
    |> pick
    |> characters
  end

  @doc """
  Return a sentence

  ## Examples

  ```
  iex> FakerElixir.Lorem.sentence
  "Qui maiores quaerat iusto quod in totam consequatur perspiciatis necessitatibus vitae ut aut earum voluptas."
  ```
  """
  def sentence do
    sentence = words(8..20) |> String.capitalize

    "#{sentence}."
  end

  @doc false
  def sentences(0) do
    nil
  end

  @doc """
  Return ```x``` sentences within the ```range``` given or ```number``` given

  ## Examples

  ```
  iex> FakerElixir.Lorem.sentences(3..5)
  "Culpa velit labore tenetur quia ipsum ullam dolore ut et commodi. Fuga quia dolore nihil non laudantium molestias nemo voluptas ea voluptatum aut aspernatur voluptatem. Repellendus illo dolorem incidunt quasi possimus quam quae alias recusandae unde aliquam optio rem velit sint eum. Quo aliquid itaque ratione eum blanditiis commodi explicabo perspiciatis nesciunt pariatur dolor eius voluptas."
  ```

  ```
  iex> FakerElixir.Lorem.sentences(2)
  "Qui omnis distinctio optio quisquam non optio id sequi assumenda corrupti distinctio et et inventore libero mollitia et. Cum doloremque sapiente mollitia nulla harum pariatur natus voluptates maxime consequuntur sunt commodi blanditiis ut nam."
  ```
  """
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


  @doc """
  Return some sentences

  ## Examples

  ```
  iex> FakerElixir.Lorem.sentences
  "Aspernatur illo dicta quia ut qui nihil distinctio debitis est laudantium ut ipsa facilis dolorum. Sed omnis natus ut officia magnam aut ut vel aperiam."
  ```
  """
  def sentences do
    # Pick a random number of sentences
    # and execute
    2..5
    |> pick
    |> sentences
  end
end
