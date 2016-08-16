defmodule FakerElixir.AddressTest do

  use ExUnit.Case

  test "city/0" do
    assert is_binary(FakerElixir.Address.city)
  end

  test "make_country/0" do
    country = FakerElixir.Address.make_country
    assert is_map(country)
    assert Map.has_key?(country, :name)
    assert Map.has_key?(country, :code)
  end

  test "country/0" do
    assert is_binary(FakerElixir.Address.country)
  end

  test "country_code/0" do
    assert is_binary(FakerElixir.Address.country_code)
  end

  test "street_suffix/0" do
    assert is_binary(FakerElixir.Address.street_suffix)
  end

  test "street_name/0" do
    assert is_binary(FakerElixir.Address.street_name)
  end

  test "street_address/0" do
    assert is_binary(FakerElixir.Address.street_address)
  end

  test "building_number/0" do
    assert is_binary(FakerElixir.Address.building_number)
  end

  test "zip_code/0" do
    assert is_binary(FakerElixir.Address.zip_code)
  end

  test "time_zone/0" do
    assert is_binary(FakerElixir.Address.time_zone)
  end

  test "state/0" do
    assert is_binary(FakerElixir.Address.state)
  end

  test "state_code/0" do
    code = FakerElixir.Address.state_code
    assert is_binary(code)
    assert String.length(code) == 2
  end

  test "latitude/0" do
    latitude = FakerElixir.Address.latitude
    assert is_float(latitude)
    assert latitude |> between?(-90, 90)
  end

  test "longitude/0" do
    longitude = FakerElixir.Address.longitude
    assert is_float(longitude)
    assert longitude |> between?(-180, 180)
  end

  defp between?(value, left, right) do
    left <= value and value <= right
  end
end
