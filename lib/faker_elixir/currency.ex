defmodule FakerElixir.Currency do

  @moduledoc """
  Generate fake data for the domain currency
  """

  import FakerElixir.Helpers.App
  
  @doc """
  Return currency code

  ## Example

  ```
  iex> FakerElixir.Currency.code
  "ZMK"
  ```
  """
  def code do    
   fetch_currency.code
  end

  @doc """
  Return currency symbol

  ## Example

  ```
  iex> FakerElixir.Currency.symbol
  "€"
  ```
  """
  def symbol do
    fetch_currency.symbol
  end

  @doc """
  Return currency name

  ## Example

  ```
  iex> FakerElixir.Currency.name
  "East Caribbean Dollar"
  ```
  """
  def name do
    fetch_currency.name
  end

  @doc """
  Return currency struct with different keys

  ## Example

  ```
  iex> FakerElixir.Currency.make
  %{code: "UAH", country: "Ukraine", name: "Ukrainian Hryvnia", symbol: "₴"}
  ```
  """
  def make do
    fetch_currency
  end

  defp fetch_currency do
    :currencies
    |> fetch
    |> pick
  end

end