defmodule FakerElixir.Internet do

  @doc """
  Return an email

  """
  def email do
    first_name = (:first_names |> fetch |> pick)
    email(first_name)
  end

  def email(name) do
    domain = (:first_names |> fetch |> pick |> String.downcase)
    extension = (:domain_extensions |> fetch |> pick)

    "#{name}@#{domain}.#{extension}"
  end

  def email(:popular) do
  end

  def email(:popular, name) do

  end

  def user_name do
  end

  def user_name(name) do
  end

  def url do
  end

  def url(domain) do

  end

  def url(:safe) do

  end

  def url(:safe, domain) do

  end

end
