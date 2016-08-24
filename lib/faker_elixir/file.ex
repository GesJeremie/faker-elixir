defmodule FakerElixir.File do

  import FakerElixir.Helpers.App

  def extension do
    category = categories_file_extensions() |> pick
    extensions = :file_extensions |> fetch

    extensions[category] |> pick
  end

  def extension(category) do
    category_extension_exists!(category)
    extensions = :file_extensions |> fetch

    extensions[category] |> pick
  end

  def name do

  end

  def name(type) do

  end

  def mime do

  end

  def mime(kind) do
  end


  defp category_extension_exists!(category) do
    if Enum.member?(categories_file_extensions(), category) do
      true
    else
      message = "This extension category doesn't exist, allowed: #{allowed_file_extensions()}"
      raise ArgumentError, message: message
    end
  end


  defp category_mime_exists!(category) do
    if Enum.member?(categories_file_mimes(), category) do
      true
    else
      message = "This extension category doesn't exist, allowed: #{allowed_file_mimes()}"
      raise ArgumentError, message: message
    end
  end

  defp allowed_file_extensions do
    categories_file_extensions()
    |> Enum.map_join(", ", fn(x) -> ":#{x}" end)
  end

  defp allowed_file_mimes do
    categories_file_mimes()
    |> Enum.map_join(", ", fn(x) -> ":#{x}" end)
  end

  defp categories_file_extensions do
    extensions = :file_extensions |> fetch
    Map.keys(extensions)
  end

  defp categories_file_mimes do
    mimes = :file_mimes |> fetch
    Map.keys(mimes)
  end



end
