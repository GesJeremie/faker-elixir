defmodule FakerElixir.File do

  import FakerElixir.Helpers.App

  def extension do
    # Pick randomly a category and execute extension/1
    categories_extensions()
    |> pick
    |> extension
  end

  def extension(category) do
    # Check if exists
    category |> for_extension_exists!

    # Get the file extensions of the locale
    extensions = :file_extensions |> fetch

    # Pick randomly a value for the category given
    extensions[category] |> pick
  end

  def name do
    name = :words |> fetch |> pick |> remove_accents
    extension = extension()

    "#{name}.#{extension}"
  end

  def name(category) do
    name = :words |> fetch |> pick |> remove_accents
    extension = extension(category)

    "#{name}.#{extension}"
  end

  def mime do
    # Pick randomly a category and execute mime/1
    categories_mimes()
    |> pick
    |> mime
  end

  def mime(category) do
    # Check if exists
    category |> for_mime_exists!

    # Get the file mimes of the locale
    mimes = :file_mimes |> fetch

    # Pick randomly a value for the category given
    mimes[category] |> pick
  end


  ##
  # Raise if the category given doesn't exist in the categories
  # of the file extensions
  ##
  defp for_extension_exists!(category) do
    categories_extensions() |> do_check_exists!(category)
  end

  ##
  # Raise if the category given doesn't exist in the categories
  # of the file mimes
  ##
  defp for_mime_exists!(category) do
    categories_mimes() |> do_check_exists!(category)
  end

  defp do_check_exists!(categories, category) do
    unless Enum.member?(categories, category) do
      message = "This category doesn't exist, allowed: #{categories |> format}"
      raise ArgumentError, message: message
    end
  end

  ##
  # Humanize the enumerable given
  #
  # Example:
  #
  # format([:audio, :office])
  #
  # ":audio, :office"
  ##
  defp format(allowed) do
    allowed
    |> Enum.map_join(", ", fn(x) -> ":#{x}" end)
  end

  ##
  # Return the categories of the file extensions
  ##
  defp categories_extensions do
    extensions = :file_extensions |> fetch
    Map.keys(extensions)
  end

  ##
  # Return the categories of the file mimes
  ##
  defp categories_mimes do
    mimes = :file_mimes |> fetch
    Map.keys(mimes)
  end



end
