defmodule FakerElixir.Phone do
  @moduledoc """
  Generate fake date for the domain Phone
  """

  import FakerElixir.Helpers.App

  @doc """
  Return a domestic phone number

  ## Examples

  ```
  iex> FakerElixir.Phone.home

  ```
  """
  def home do
    :phone_home_patterns |> fetch |> pick |> numerify
  end

  @doc """
  Return a cell phone number

  ## Examples

  ```
  iex> FakerElixir.Phone.cell

  ```
  """
  def cell do
    :phone_cell_patterns |> fetch |> pick |> numerify
  end

end
