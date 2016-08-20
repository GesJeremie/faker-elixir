defmodule FakerElixir.Boolean do
  @moduledoc """
  Generate fake data for the domain boolean
  """

  import FakerElixir.Helpers.App

  @doc """
  Return a boolean with **equal** chance to be ```true``` or ```false```

  ## Examples

  ```
  iex> FakerElixir.Boolean.boolean
  true
  ```
  """
  def boolean do
    boolean(0.5)
  end

  @doc """
  Return a boolean with a **ratio** chance to be ```true```

  ## Examples

  It will be always ```true```:

  ```
  iex> FakerElixir.Boolean.boolean(1)
  true
  ```

  It will be always ```false```:

  ```
  iex> FakerElixir.Boolean.boolean(0)
  false
  ```

  10% chance to be ```true```:

  ```
  iex> FakerElixir.Boolean.boolean(0.1)
  false
  ```

  90% chance to be ```true```:

  ```
  iex> FakerElixir.Boolean.boolean(0.9)
  true
  ```

  """
  def boolean(ratio) when ratio >= 0 and ratio <= 1 do

    # We will fill a list with 10 boolean values
    #
    # Let's say we have a ratio of 1, the list will look like:
    # [true, true, true, true, true, true, true, true, true, true]
    #
    # For a ratio of 0, the list will look like:
    # [false, false, false, false, false, false, false, false, false, false]
    #
    # So it's super easy, we just need to find how many false / true we need to
    # generate to fill the 10 values. We will pick a value from the list with
    # the helper pick() and we are done!

    number_of_true = round(ratio * 10)
    number_of_false = round(10 - number_of_true)

    chances = List.duplicate(true, number_of_true) ++ List.duplicate(false, number_of_false)

    chances
    |> pick
  end

end
