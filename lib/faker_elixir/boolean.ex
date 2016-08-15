defmodule FakerElixir.Boolean do
  @moduledoc """
  Generate fake data for the domain boolean
  """

  import FakerElixir.Helpers.App

  @doc """
  Return a boolean with 50% chances to be false or true

  ## Example
  """
  def boolean do
    boolean(0.5)
  end

  @doc """
  Return a boolean
  """
  def boolean(ratio) do

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
