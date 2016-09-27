defmodule FakerElixir.Currency do

  @moduledoc """
  Generate fake data for the domain currency
  """

  import FakerElixir.Helpers.App
  
  def code do    
   fetch_currency.code
  end

  def symbol do
    
  end

  def name do
    
  end

  def make do
    
  end

  defp fetch_currency do
    :currencies
    |> fetch
    |> pick
  end

end