defmodule FakerElixir.Helper do
  @moduledoc """
  Provide useful helpers
  """

  alias FakerElixir.Helpers.{App, Store}

  @doc """
  Fill a pattern with random number

  ## Examples

  ```
  iex > FakerElixir.Helper.numerify("Apt. ###")
  "Apt. 902"

  iex > FakerElixir.Helper.numerify("06.##.##.##.##")
  "06.67.18.21.27"
  """
  def numerify(pattern), do: App.numerify(pattern)

  @doc """
  Fill a pattern with random letters

  ## Examples

  ```
  iex > FakerElixir.Helper.letterify("###")
  "ahh"

  iex > FakerElixir.Helper.letterify("#.#.#.#")
  "k.e.n.u"
  ```
  """
  def letterify(pattern), do: App.letterify(pattern)

  @doc """
  Pick randomly a value in an enumerable

  ## Examples

  ```
  iex> FakerElixir.Helper.pick(["paris", "athens", "london"])
  "london"
  ```

  ```
  iex> FakerElixir.Helper.pick(0..100)
  51
  ```
  """
  def pick(enumerable), do: App.pick(enumerable)

  @doc """
  Will iterate through the enumerable as a constant cycle. Really useful when you want to seed your database with a pre-defined cycle

  ```Warning:``` The id (first param given) should be unique for each different cycle

  ## Examples

  #### Basic

  ```
  iex(1)> FakerElixir.Helper.cycle(:zombies, ["Peter", "Audrey", "Laurent", "Frank"])
  "Peter"
  iex(2)> FakerElixir.Helper.cycle(:zombies, ["Peter", "Audrey", "Laurent", "Frank"])
  "Audrey"
  iex(3)> FakerElixir.Helper.cycle(:zombies, ["Peter", "Audrey", "Laurent", "Frank"])
  "Laurent"
  iex(4)> FakerElixir.Helper.cycle(:zombies, ["Peter", "Audrey", "Laurent", "Frank"])
  "Frank"
  iex(5)> FakerElixir.Helper.cycle(:zombies, ["Peter", "Audrey", "Laurent", "Frank"])
  "Peter"
  iex(6)> FakerElixir.Helper.cycle(:zombies, ["Peter", "Audrey", "Laurent", "Frank"])
  "Audrey"
  iex(7)> FakerElixir.Helper.cycle(:zombies, ["Peter", "Audrey", "Laurent", "Frank"])
  "Laurent"
  iex(8)> FakerElixir.Helper.cycle(:zombies, ["Peter", "Audrey", "Laurent", "Frank"])
  "Frank"

  # ... and so on.
  ```

  #### Seed example

  ```
  defmodule Seed do

    alias FakerElixir.Helper

    def make do
      warriors = Stream.repeatedly(fn() -> fixture(:warrior) end)
        |> Enum.take(5)
    end


    defp fixture(:warrior) do
      %{
        name: Helper.cycle(:name, ["anubis", "zeus", "behamut"]),
        lvl: Helper.cycle(:lvl, [10, 25, 90])
      }
    end

  end

  iex> Seed.make
  [
    %{lvl: 10, name: "anubis"},
    %{lvl: 25, name: "zeus"},
    %{lvl: 90, name: "behamut"},
    %{lvl: 10, name: "anubis"},
    %{lvl: 25, name: "zeus"}
  ]
  ```
  """
  def cycle(id, enumerable) do
    stored = Store.has?(id)
    do_cycle(stored, id, enumerable)
  end


  defp do_cycle(false, id, enumerable) do
    # Fetch first value
    value = hd(enumerable)

    # Drop first value
    enumerable = Enum.drop(enumerable, 1)

    # Store
    Store.set(id, enumerable)

    # Display
    value
  end

  defp do_cycle(true, id, enumerable) do
    # Fetch list stored
    list = Store.get(id)

    # Fetch first value
    value = hd(list)

    # Refill the store
    if refill_store?(list) do
      Store.set(id, enumerable)
    else
      # Update
      Store.set(id, Enum.drop(list, 1))
    end

    # Display value
    value
  end

  defp refill_store?(list) do
    length(list) == 1
  end

end
