defmodule FakerElixir.Address do

  import FakerElixir.Helpers.App

  def city do
    :cities
      |> fetch
      |> pick
  end

  def street_name do
  end

  def street_address do
  end

  def secondary_address do

  end

  def building_number do
  end

  def zip_code do

  end

  def time_zone do

  end

  def street_suffix do
  end

  def city_suffix do
  end

  def city_prefix do
  end

  def state do

  end

  def state_abbr do

  end

  def country do
    :countries
      |> fetch
      |> pick
  end

  def country_code do
    :countries_code
      |> fetch
      |> pick
  end

  def latitude do
    ((rand * 180) - 90)
  end

  def longitude do
    ((rand * 360) - 180)
  end

end
