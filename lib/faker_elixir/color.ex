defmodule FakerElixir.Color do

  import FakerElixir.Helpers.App

  def name do
    :colors |> fetch |> pick
  end

  def hex do
    hex = :io_lib.format("~2.16.0B~2.16.0B~2.16.0B", make_rgb())
    |> :erlang.iolist_to_binary

    "##{hex}"
  end

  def make_rgb do
    stream = Stream.repeatedly(&rgb_color/0)
    stream |> Enum.take(3)
  end

  def rgb do
    [color1, color2, color3] = make_rgb()

    "rgb(#{color1}, #{color2}, #{color3})"
  end

  defp rgb_color do
    0..255 |> pick
  end

  def make_hsl do
    [pick(0..360), "#{pick(0..100)}%", "#{pick(0..100)}%"]
  end

  def hsl do
    [color1, color2, color3] = make_hsl()

    "hsl(#{color1}, #{color2}, #{color3})"
  end


end
