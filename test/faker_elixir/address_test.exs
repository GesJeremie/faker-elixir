defmodule FakerElixir.AddressTest do

  use ExUnit.Case

  describe "city/0" do

    test "return binary" do
      assert is_binary(FakerElixir.Address.city)
    end

  end

  describe "make_country/0" do

    test "return map" do
      country = FakerElixir.Address.make_country
      assert is_map(country)
      assert Map.has_key?(country, :name)
      assert Map.has_key?(country, :code)
    end

  end

  describe "country/0" do

    test "return binary" do
      assert is_binary(FakerElixir.Address.country)
    end

  end

  describe "country_code/0" do

    test "return binary" do
      assert is_binary(FakerElixir.Address.country_code)
    end

  end

  describe "street_suffix/0" do

    test "return binary" do
      assert is_binary(FakerElixir.Address.street_suffix)
    end

  end

  describe "street_name/0" do

    test "return binary" do
      assert is_binary(FakerElixir.Address.street_name)
    end

  end

  describe "street_address/0" do

    test "return binary" do
      assert is_binary(FakerElixir.Address.street_address)
    end

  end


  describe "building_number/0" do

    test "return binary" do
      assert is_binary(FakerElixir.Address.building_number)
    end

  end

  describe "zip_code/0" do

    test "return binary" do
      assert is_binary(FakerElixir.Address.zip_code)
    end

  end

  describe "time_zone/0" do

    test "return binary" do
      assert is_binary(FakerElixir.Address.time_zone)
    end

  end

  describe "state/0" do

    test "return binary" do
      assert is_binary(FakerElixir.Address.state)
    end

  end

  describe "state_code/0" do

    test "return binary" do
      assert is_binary(FakerElixir.Address.state_code)
    end

  end

  describe "latitude/0" do

    test "return float" do
      assert is_float(FakerElixir.Address.latitude)
    end

    test "correct latitude" do
      assert FakerElixir.Address.latitude |> between?(-90, 90)
    end

  end

  describe "longitude/0" do

    test "return float" do
      assert is_float(FakerElixir.Address.longitude)
    end

    test "correct longitude" do
      assert FakerElixir.Address.longitude |> between?(-180, 180)
    end

  end

  defp between?(value, left, right) do
    left <= value and value <= right
  end
end
