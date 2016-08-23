defmodule FakerElixir.Color do
  @moduledoc """
  Generate fake date for the domain Color
  """

  import FakerElixir.Helpers.App

  @doc """
  Return name

  ## Examples

  ```
  iex> FakerElixir.Color.name
  "white"
  ```
  """
  def name do
    :colors |> fetch |> pick
  end

  @doc """
  Return hex

  ## Examples

  ```
  iex> FakerElixir.Color.hex
  "#1671B0"
  ```
  """
  def hex do
    hex = :io_lib.format("~2.16.0B~2.16.0B~2.16.0B", make_rgb())
    |> :erlang.iolist_to_binary

    "##{hex}"
  end

  @doc """
  Return a list with rgb values

  ## Examples

  ```
  iex> FakerElixir.Color.make_rgb
  [65, 137, 5]
  ```
  """
  def make_rgb do
    stream = Stream.repeatedly(&rgb_color/0)
    stream |> Enum.take(3)
  end

  @doc """
  Return rgb

  ## Examples

  ```
  iex> FakerElixir.Color.rgb
  "rgb(152, 228, 47)"
  ```
  """
  def rgb do
    [color1, color2, color3] = make_rgb()

    "rgb(#{color1}, #{color2}, #{color3})"
  end

  defp rgb_color do
    0..255 |> pick
  end

  @doc """
  Return a list with hsl values

  ## Examples

  ```
  iex> FakerElixir.Color.make_hsl
  [236, "13%", "77%"]
  ```
  """
  def make_hsl do
    [pick(0..360), "#{pick(0..100)}%", "#{pick(0..100)}%"]
  end

  @doc """
  Return hsl

  ## Examples

  ```
  iex> FakerElixir.Color.hsl
  "hsl(130, 40%, 41%)"
  ```
  """
  def hsl do
    [color1, color2, color3] = make_hsl()

    "hsl(#{color1}, #{color2}, #{color3})"
  end


end
