defmodule FakerElixir.App do
  @moduledoc """
  Generate fake data for the domain app
  """

  import FakerElixir.Helpers.App

  @doc """
  Return an application name

  ## Examples

  ```
  iex> FakerElixir.App.name
  "Chocolada"
  ```
  """
  def name do
    :apps |> fetch |> pick
  end

  @doc """
  Return a version number

  ## Examples

  ```
  iex> FakerElixir.App.version
  "8.1.7"
  ```
  """
  def version do
    :version_patterns
    |> fetch
    |> pick
    |> numerify
  end

  @doc """
  Return an author name

  ## Examples

  ```
  iex> FakerElixir.App.author
  "Antonio Konopelski"
  ```

  """
  def author do
    first_name = :first_names |> fetch |> pick
    last_name = :last_names |> fetch |> pick

    "#{first_name} #{last_name}"
  end

end
