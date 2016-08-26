defmodule FakerElixir.Number do
  @moduledoc """
  Generate fake data for the domain Number
  """

  import FakerElixir.Helpers.App

  @doc """
  Return a digit

  ## Examples

  ```
  iex> FakerElixir.Number.digit
  3
  ```
  """
  def digit do
    0..9 |> pick
  end

  @doc """
  Return random digits

  ## Examples

  ```
  iex> FakerElixir.Number.digits
  452
  ```
  """
  def digits do
    1..6 |> pick |> digits
  end

  @doc """
  Return ```x``` digits

  ## Examples

  ```
  iex> FakerElixir.Number.digits(4)
  7025
  ```
  """
  def digits(length) do
    digits =
      Stream.repeatedly(&digit/0)
      |> Enum.take(length)
      |> Enum.join

    digits =
      if digits |> String.at(0) == "0" do
        String.replace_leading(digits, "0", "#{(1..9 |> pick)}")
      else
        digits
      end

    {result, _} = digits |> Integer.parse

    result
  end


  @doc """
  Return a number between the range given

  ## Examples

  ```
  iex> FakerElixir.Number.between(15..150)
  130
  ```
  """
  def between(range) when is_map(range) do
    range |> pick
  end

  @doc """
  Return a number between the min and max given

  ## Examples

  ```
  iex> FakerElixir.Number.between(15, 150)
  18

  iex> FakerElixir.Number.between(11.22, 13.88)
  11.24

  iex> FakerElixir.Number.between(12, 12.35)
  12.11
  ```
  """
  def between(min, max) when is_integer(min) and is_integer(max) do
    min..max |> pick
  end

  def between(min, max) do

    # Convert everything to float
    min = min * 1.0
    max = max * 1.0

    result = rand() * (max - min) + min

    result |> Float.round(2)
  end

  @doc """
  Return a random decimal number

  ## Examples

  ```
  iex> FakerElixir.Number.decimal
  "70.8"
  ```
  """
  def decimal do
    decimal((1..2 |> pick), (1..2 |> pick))
  end

  @doc """
  Return a random decimal number with ```x``` left digits

  ## Examples

  ```
  iex> FakerElixir.Number.decimal(3)
  "918.43"
  ```
  """
  def decimal(left_digits) do
    decimal(left_digits, (1..3 |> pick))
  end

  @doc """
  Return a random decimal number with ```x``` left digits and ```x```
  right digits

  ## Examples

  ```
  iex> FakerElixir.Number.decimal(1, 3)
  "2.298"
  ```
  """
  def decimal(left_digits, right_digits) do
    left = digits(left_digits)
    right = digits(right_digits)

    "#{left}.#{right}"
  end

end
