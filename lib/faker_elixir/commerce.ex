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
    "#{pick_coupon_adjective()}#{pick_coupon_noun()}#{digits}"
  end

  @doc """
  Return product name


  ## Example

  ```
  FakerElixir.Commerce.product
  "Tasty Fresh Skirt"
  ```
  """
  def product do
    "#{pick_product_adjective()} #{pick_product_material()} #{pick_product_name()}"
  end

  @doc """
  Return a common Stock-keeping unit


  ## Example

  ```
  FakerElixir.Commerce.sku
  "3YW9Q3S6"
  ```
  """
  def sku do
    chars = letterify("####")
    digits = numerify("####")
    
    chars <> digits
    |> String.split("")
    |> Enum.shuffle
    |> Enum.join
    |> String.upcase
  end

  defp fetch_coupons do
    :coupons |> fetch
  end

  defp pick_coupon_noun do
      fetch_coupons() |> Map.get(:noun) |> pick
  end

  defp pick_coupon_adjective do
      fetch_coupons() |> Map.get(:adjective) |> pick
  end

  defp fetch_products do
    :products |> fetch  
  end

  defp pick_product_adjective do
    fetch_products() |> Map.get(:adjective) |> pick
  end

  defp pick_product_material do
    fetch_products() |> Map.get(:material) |> pick
  end

  defp pick_product_name do
    fetch_products() |> Map.get(:name) |> pick
  end

end
