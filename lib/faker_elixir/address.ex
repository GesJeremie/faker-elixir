defmodule FakerElixir.Address do
  @moduledoc """
  Generate fake data for the domain address
  """

  import FakerElixir.Helpers.App

  @doc """
  Return city name

  ## Examples

  ```
  iex> FakerElixir.Address.city
  "Portland"
  ```

  """
  def city do
    :cities
    |> fetch
    |> pick
  end

  @doc """
  Return country struct with code & name.

  ## Examples

  ```
  iex> FakerElixir.Address.make_country
  %{code: "MY", name: "Malaysia"}
  ```
  """
  def make_country do
    :countries
    |> fetch
    |> pick
  end

  @doc """
  Return country name

  ## Examples

  ```
  iex> FakerElixir.Address.country
  "Iceland"
  ```
  """
  def country do
    make_country().name
  end

  @doc """
  Return country code

  ## Examples

  ```
  iex> FakerElixir.Address.country_code
  "NY"
  ```
  """
  def country_code do
    make_country().code
  end

  @doc """
  Return street suffix

  ## Examples

  ```
  iex> FakerElixir.Address.street_suffix
  "Lodge"
  ```
  """
  def street_suffix do
    :street_suffixes
    |> fetch
    |> pick
  end

  @doc """
  Return street name

  ## Examples

  ```
  iex> FakerElixir.Address.street_name
  "McLaughlin Mills"
  ```
  """
  def street_name do
    0..1
    |> pick
    |> do_street_name
  end

  defp do_street_name(0) do
    first_name =
      :first_names
      |> fetch
      |> pick

    "#{first_name} #{street_suffix()}"
  end

  defp do_street_name(1) do
    last_name =
      :last_names
      |> fetch
      |> pick

    "#{last_name} #{street_suffix()}"
  end

  @doc """
  Return street address

  ## Examples

  ```
  iex> FakerElixir.Address.street_address
  "786 Willow Parkways"
  ```
  """
  def street_address do
    "#{building_number()} #{street_name()}"
  end

  @doc """
  Return secondary address

  ## Examples

  ```
  iex> FakerElixir.Address.secondary_address
  "Apt. 752"
  ```
  """
  def secondary_address do
    :secondary_addresses
    |> fetch
    |> pick
    |> numerify
  end

  @doc """
  Return building number

  ## Examples

  ```
  iex> FakerElixir.Address.building_number
  "542"
  ```
  """
  def building_number do
    :building_patterns
    |> fetch
    |> pick
    |> numerify
  end

  @doc """
  Return a zip code

  ## Examples

  ```
  iex> FakerElixir.Address.zip_code
  "59146-7626"
  ```
  """
  def zip_code do
    :zip_code_patterns
    |> fetch
    |> pick
    |> numerify
  end

  @doc """
  Return a time zone

  ## Examples

  ```
  iex> FakerElixir.Address.time_zone
  "Europe/Sarajevo"
  ```
  """
  def time_zone do
    :time_zones
    |> fetch
    |> pick
  end

  @doc """
  Return a state name

  ## Examples

  ```
  iex> FakerElixir.Address.state
  "New Jersey"
  ```
  """
  def state do
    :states
    |> fetch
    |> pick
  end

  @doc """
  Return a state code

  ## Examples

  ```
  iex> FakerElixir.Address.state_code
  "TX"
  ```
  """
  def state_code do
    :state_codes
    |> fetch
    |> pick
  end

  @doc """
  Return a latitude

  ## Examples

  ```
  iex> FakerElixir.Address.latitude
  -71.67369045432866
  ```
  """
  def latitude do
    ((rand() * 180) - 90)
  end

  @doc """
  Return a longitude

  ## Examples

  ```
  iex> FakerElixir.Address.longitude
  -114.67722189422487
  ```
  """
  def longitude do
    ((rand() * 360) - 180)
  end

end
