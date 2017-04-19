defmodule FakerElixir.Commerce do
  @moduledoc """
  Generate fake data for the domain Commerce
  """

  import FakerElixir.Helpers.App
  alias FakerElixir.Number

  @doc """
  Return discount code


  ## Example

  ```
  iex> FakerElixir.Commerce.coupon
  "StellarDeal683"
  ```
  """
  def coupon do
    1..6 |> pick |> coupon  
  end

  @doc """
  Return discount code with the number of digits wanted


  ## Example

  ```
  FakerElixir.Commerce.coupon(4)
  "PremiumSale5496"
  ```
  """
  def coupon(nb_digits) do
    digits = Number.digits(nb_digits)
    "#{pick_adjective()}#{pick_noun()}#{digits}"
  end

  defp fetch_coupons do
    :coupons |> fetch
  end

  defp pick_noun do
      fetch_coupons() |> Map.get(:noun) |> pick
  end

  defp pick_adjective do
      fetch_coupons() |> Map.get(:adjective) |> pick
  end

end
