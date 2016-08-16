defmodule FakerElixir.CryptoTest do

  use ExUnit.Case
  alias FakerElixir.Crypto

  test "md5/0" do
    stream = Stream.repeatedly(fn() ->
      assert String.length(Crypto.md5) == 32
    end)

    stream |> Enum.take(30)
  end

  test "sha1/0" do
    stream = Stream.repeatedly(fn() ->
      assert String.length(Crypto.sha1) == 40
    end)

    stream |> Enum.take(30)
  end

  test "sha224/0" do
    stream = Stream.repeatedly(fn() ->
      assert String.length(Crypto.sha224) == 56
    end)

    stream |> Enum.take(30)
  end

  test "sha256/0" do
    stream = Stream.repeatedly(fn() ->
      assert String.length(Crypto.sha256) == 64
    end)

    stream |> Enum.take(30)
  end

  test "sha384/0" do
    stream = Stream.repeatedly(fn() ->
      assert String.length(Crypto.sha384) == 96
    end)

    stream |> Enum.take(30)
  end

  test "sha512/0" do
    stream = Stream.repeatedly(fn() ->
      assert String.length(Crypto.sha512) == 128
    end)

    stream |> Enum.take(30)
  end


end
