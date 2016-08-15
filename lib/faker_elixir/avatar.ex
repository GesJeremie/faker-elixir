defmodule FakerElixir.Avatar do
  @moduledoc """
  Generate fake data for the domain avatar
  """

  import FakerElixir.Helpers.App

  @doc """
  Return an avatar of a robot with a size of 300x300

  ## Examples

    iex > FakerElixir.Avatar.image
    "https://robohash.org/fceuxke.png?size=300x300"
  """
  def image do
    slug = word()
    "https://robohash.org/#{slug}.png?size=300x300"
  end

  @doc """
  Return an avatar of a robot with the slug given and a size of 300x300

  ## Examples

    iex > FakerElixir.Avatar.image("zombies-must-die")
    "https://robohash.org/zombies-must-die.png?size=300x300"
  """
  def image(slug) do
    "https://robohash.org/#{slug}.png?size=300x300"
  end

  @doc """
  Return an avatar of a robot with the slug given and the size wanted

  ## Examples

    iex > FakerElixir.Avatar.image("zombies-forever", "400x400")
    "https://robohash.org/zombies-forever.png?size=400x400"
  """
  def image(slug, size) do
    "https://robohash.org/#{slug}.png?size=#{size}"
  end

  @doc """
  Return an avatar of a robot with the slug, size and type given

  ## Examples

    iex > FakerElixir.Avatar.image("i-love-a-zombie", "300x300", "jpg")
    "https://robohash.org/i-love-a-zombie.jpg?size=300x300"
  """
  def image(slug, size, type) do
    "https://robohash.org/#{slug}.#{type}?size=#{size}"
  end

  @doc """
  Return an avatar of a robot with the slug, size, type and set given

  ## Examples

    iex > FakerElixir.Avatar.image("boring-slug", "230x230", "bmp", "set1")
    "https://robohash.org/boring-slug.bmp?size=230x230&set=set1"
  """
  def image(slug, size, type, set) do
    "https://robohash.org/#{slug}.#{type}?size=#{size}&set=#{set}"
  end

  @doc """
  Return an avatar of a robot with the slug, size, type, set and bg given

  ## Examples

    iex > FakerElixir.Avatar.image("ahahahaha", "198x198", "jpg", "set2", "bg2")
    "https://robohash.org/ahahahaha.jpg?size=198x198&set=set2&bgset=bg2"
  """
  def image(slug, size, type, set, bgset) do
    "https://robohash.org/#{slug}.#{type}?size=#{size}&set=#{set}&bgset=#{bgset}"
  end

end
