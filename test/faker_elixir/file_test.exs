defmodule FakerElixir.FileTest do

  use ExUnit.Case, async: true
  alias FakerElixir.File

  describe "extension/0" do

    test "return binary" do
      assert is_binary(File.extension)
    end

  end

  describe "extension/1" do

    test "raise for invalid category" do
      assert_raise ArgumentError, fn -> File.extension(:fake_category) end
    end

  end

  describe "mime/0" do

    test "return binary" do
      assert is_binary(File.mime)
    end

  end

  describe "mime/1" do

    test "raise for invalid category" do
      assert_raise ArgumentError, fn -> File.mime(:fake_category) end
    end

  end

  describe "name/0" do

    test "return binary" do
      assert is_binary(File.name)
    end

  end

  describe "name/1" do

    test "return binary" do
      assert is_binary(File.name(:audio))
    end

  end

end
