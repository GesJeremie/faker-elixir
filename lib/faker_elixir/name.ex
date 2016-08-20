defmodule FakerElixir.Name do
  @moduledoc """
  Generate fake data for the domain lorem
  """

  import FakerElixir.Helpers.App

  @doc """
  Return a first name and a last name

  ## Examples

  ```
  iex> FakerElixir.Name.name
  "Louie Corkery"
  ```
  """
  def name do
    "#{first_name} #{last_name}"
  end

  @doc """
  Return a first name, middle name and last name

  ## Examples

  ```
  iex> FakerElixir.Name.name_with_middle
  "Annalise Francesco Schowalter"
  ```
  """
  def name_with_middle do
    "#{first_name} #{first_name} #{last_name}"
  end

  @doc """
  Return a first name

  ## Examples

  ```
  iex> FakerElixir.Name.first_name
  "Ari"
  ```
  """
  def first_name do
    :first_names
    |> fetch
    |> pick
  end

  @doc """
  Return a last name

  ## Examples

  ```
  iex> FakerElixir.Name.last_name
  "Miller"
  ```
  """
  def last_name do
    :last_names
    |> fetch
    |> pick
  end

  @doc """
  Return a prefix

  ## Examples

  ```
  iex> FakerElixir.Name.prefix
  "Mr."
  ```
  """
  def prefix do
    :prefixes
    |> fetch
    |> pick
  end

  @doc """
  Return a suffix

  ## Examples

  ```
  iex> FakerElixir.Name.suffix
  "PhD"
  ```
  """
  def suffix do
    :suffixes
    |> fetch
    |> pick
  end

  @doc """
  Return a title

  ## Examples

  ```
  iex> FakerElixir.Name.title
  "Principal Branding Orchestrator"
  ```
  """
  def title do
    descriptor = :title_descriptors |> fetch |> pick
    level = :title_levels |> fetch |> pick
    job = :title_jobs |> fetch |> pick

    "#{descriptor} #{level} #{job}"
  end

end
