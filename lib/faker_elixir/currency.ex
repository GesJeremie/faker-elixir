defmodule FakerElixir.Currency do

  @moduledoc """
  Generate fake data for the domain currency
  """

  import FakerElixir.Helpers.App
  
  def code do    
   fetch_currency.code
  end

  def symbol do
    fetch_currency.symbol
  end

  def name do
    fetch_currency.name
  end

  def make do
    fetch_currency
  end

  defp fetch_currency do
    :currencies
    |> fetch
    |> pick
  end

end