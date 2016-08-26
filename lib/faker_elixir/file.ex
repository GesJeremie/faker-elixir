defmodule FakerElixir.File do
  @moduledoc """
  Generate fake data for the domain File
  """

  import FakerElixir.Helpers.App

  @doc """
  Return an extension

  ## Examples

  ```
  iex> FakerElixir.File.extension
  "png"
  ```
  """
  def extension do
    # Pick randomly a category and execute extension/1
    categories_extensions()
    |> pick
    |> extension
  end

  @doc """
  Return an extension for the category given

  Allowed categories: ```:image```, ```:audio```, ```:text```, ```:video```, ```:office```

  ## Examples

  ```
  iex> FakerElixir.File.extension(:audio)
  "mp3"
  ```
  """
  def extension(category) do
    # Check if exists
    category |> for_extension_exists!

    # Get the file extensions of the locale
    extensions = :file_extensions |> fetch

    # Pick randomly a value for the category given
    extensions[category] |> pick
  end

  @doc """
  Return a file name

  ## Examples

  ```
  iex> FakerElixir.File.name
  "aut.css"
  ```
  """
  def name do
    name = :words |> fetch |> pick |> remove_accents
    extension = extension()

    "#{name}.#{extension}"
  end

  @doc """
  Return a file name for the category given

  Allowed categories: ```:image```, ```:audio```, ```:text```, ```:video```, ```:office```

  ## Examples

  ```
  iex> FakerElixir.File.name(:video)
  mollitia.avi"
  ```
  """
  def name(category) do
    name = :words |> fetch |> pick |> remove_accents
    extension = extension(category)

    "#{name}.#{extension}"
  end

  @doc """
  Return a mime

  ## Examples

  ```
  iex> FakerElixir.File.mime
  "application/javascript"
  ```
  """
  def mime do
    # Pick randomly a category and execute mime/1
    categories_mimes()
    |> pick
    |> mime
  end

  @doc """
  Return a mime for the category given

  Allowed categories: ```:application```, ```:audio```, ```:image```,
  ```:message```, ```:model```, ```:multipart```, ```:text```, ```:video```

  ## Examples

  ```
  iex> FakerElixir.File.mime(:message)
  "message/rfc822"
  ```
  """
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
