defmodule FakerElixir.AvatarTest do

  use ExUnit.Case
  alias FakerElixir.Avatar


  test "image/0" do
    url = Avatar.image
    assert is_binary(url)
    assert Regex.match?(~r/https:\/\/robohash\.org\/[a-z]*\.png\?size=300x300/, url)
  end

  test "image/1" do
    url = Avatar.image("awesome-slug")
    assert is_binary(url)
    assert Regex.match?(~r/https:\/\/robohash\.org\/awesome-slug\.png\?size=300x300/, url)
  end

  test "image/2" do
    url = Avatar.image("zombie-slug", "400x500")
    assert is_binary(url)
    assert Regex.match?(~r/https:\/\/robohash\.org\/zombie-slug\.png\?size=400x500/, url)
  end

  test "image/3" do
    url = Avatar.image("my-slug-my-way", "220x200", "jpg")
    assert is_binary(url)
    assert Regex.match?(~r/https:\/\/robohash\.org\/my-slug-my-way\.jpg\?size=220x200/, url)
  end

  test "image/4" do
    url = Avatar.image("my-slug-my-way", "220x200", "jpg", "set1")
    assert is_binary(url)
    assert Regex.match?(~r/https:\/\/robohash\.org\/my-slug-my-way\.jpg\?size=220x200&set=set1/, url)
  end

  test "image/5" do
    url = Avatar.image("my-slug-my-way", "220x200", "jpg", "set1", "bg1")
    assert is_binary(url)
    assert Regex.match?(~r/https:\/\/robohash\.org\/my-slug-my-way\.jpg\?size=220x200&set=set1&bgset=bg1/, url)
  end

end
