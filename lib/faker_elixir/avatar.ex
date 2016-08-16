defmodule FakerElixir.Avatar do
  @moduledoc """
  Generate fake data for the domain avatar
  """

  alias FakerElixir.Lorem

  @doc """
  Return avatar url of a robot with a ```size``` of ```300x300```

  ## Examples

  ```
  iex> FakerElixir.Avatar.robohash
  "https://robohash.org/fceuxke.png?size=300x300"
  ```
  """
  def robohash do
    slug = Lorem.word()
    "https://robohash.org/#{slug}.png?size=300x300"
  end

  @doc """
  Return avatar url of a robot with the ```slug``` given and a ```size``` of ```300x300```

  ## Examples

  ```
  iex> FakerElixir.Avatar.robohash("zombies-must-die")
  "https://robohash.org/zombies-must-die.png?size=300x300"
  ```
  """
  def robohash(slug) do
    "https://robohash.org/#{slug}.png?size=300x300"
  end

  @doc """
  Return avatar url of a robot with the ```slug``` and ```size``` given

  ## Examples

  ```
  iex> FakerElixir.Avatar.robohash("zombies-forever", "400x400")
  "https://robohash.org/zombies-forever.png?size=400x400"
  ```
  """
  def robohash(slug, size) do
    "https://robohash.org/#{slug}.png?size=#{size}"
  end

  @doc """
  Return avatar url of a robot with the ```slug```, ```size``` and ```type``` given

  ## Examples

  ```
  iex> FakerElixir.Avatar.robohash("i-love-a-zombie", "300x300", "jpg")
  "https://robohash.org/i-love-a-zombie.jpg?size=300x300"
  ```
  """
  def robohash(slug, size, type) do
    "https://robohash.org/#{slug}.#{type}?size=#{size}"
  end

  @doc """
  Return avatar url of a robot with the ```slug```, ```size```, ```type``` and ```set``` given

  ## Examples

  ```
  iex > FakerElixir.Avatar.robohash("boring-slug", "230x230", "bmp", "set1")
  "https://robohash.org/boring-slug.bmp?size=230x230&set=set1"
  ```
  """
  def robohash(slug, size, type, set) do
    "https://robohash.org/#{slug}.#{type}?size=#{size}&set=#{set}"
  end

  @doc """
  Return avatar url of a robot with the ```slug```, ```size```, ```type```, ```set``` and ```bgset``` given

  ## Examples

  ```
  iex> FakerElixir.Avatar.robohash("ahahahaha", "198x198", "jpg", "set2", "bg2")
  "https://robohash.org/ahahahaha.jpg?size=198x198&set=set2&bgset=bg2"
  ```
  """
  def robohash(slug, size, type, set, bgset) do
    "https://robohash.org/#{slug}.#{type}?size=#{size}&set=#{set}&bgset=#{bgset}"
  end

end
