defmodule FakerElixir.AvatarTest do

  use ExUnit.Case
  alias FakerElixir.Avatar


  test "robohash/0" do
    url = Avatar.robohash
    assert is_binary(url)
    assert Regex.match?(~r/https:\/\/robohash\.org\/[a-z]*\.png\?size=300x300/, url)
  end

  test "robohash/1" do
    url = Avatar.robohash("awesome-slug")
    assert is_binary(url)
    assert url == "https://robohash.org/awesome-slug.png?size=300x300"
  end

  test "robohash/2" do
    url = Avatar.robohash("zombie-slug", "400x500")
    assert is_binary(url)
    assert url == "https://robohash.org/zombie-slug.png?size=400x500"
  end

  test "robohash/3" do
    url = Avatar.robohash("my-slug-my-way", "220x200", "jpg")
    assert is_binary(url)
    assert url == "https://robohash.org/my-slug-my-way.jpg?size=220x200"
  end

  test "robohash/4" do
    url = Avatar.robohash("my-slug-my-way", "220x200", "jpg", "set1")
    assert is_binary(url)
    assert url == "https://robohash.org/my-slug-my-way.jpg?size=220x200&set=set1"
  end

  test "robohash/5" do
    url = Avatar.robohash("my-slug-my-way", "220x200", "jpg", "set1", "bg1")
    assert is_binary(url)
    assert url == "https://robohash.org/my-slug-my-way.jpg?size=220x200&set=set1&bgset=bg1"
  end

end
