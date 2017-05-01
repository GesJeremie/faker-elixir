defmodule FakerElixir.Internet do
  @moduledoc """
  Generate fake data for the domain Internet
  """
  import FakerElixir.Helpers.App

  @doc """
  Return an email

  ## Examples

  ```
  iex> FakerElixir.Internet.email
  "demarcus@ezra.io"
  ```

  You can set ```:popular``` to generate an email with a popular domain

  ```
  FakerElixir.Internet.email(:popular)
  "candelario@gmail.com"
  ```

  You can set ```:school``` to generate an email with an university domain

  ```
  FakerElixir.Internet.email(:school)
  "trycia@uab.edu"
  ```
  """
  def email do
    name = build_name_email()

    email(name)
  end

  def email(:popular) do
    name = build_name_email()

    email(:popular, name)
  end

  def email(:school) do
    name = build_name_email()

    email(:school, name)
  end

  @doc """
  Return an email with the name given

  ## Examples

  ```
  iex> FakerElixir.Internet.email("Peter Moleski")
  "peter.moleski@ethel.net"
  ```
  """
  def email(name) do
    name = name |> slug
    domain = :first_names |> fetch |> pick |> slug
    extension = :domain_extensions |> fetch |> pick

    "#{name}@#{domain}.#{extension}"
  end

  @doc """

  ## Examples

  ```
  iex> FakerElixir.Internet.email(:popular, "Peter Sobieska")
  "peter.sobieska@hotmail.com"
  ```

  ```
  iex> FakerElixir.Internet.email(:school, "Harry potter")
  "harry.potter@pittstate.edu"
  ```
  """
  def email(:popular, name) do
    name = name |> slug
    domain_popular = :domain_popular_emails |> fetch |> pick

    "#{name}@#{domain_popular}"
  end

  def email(:school, name) do
    name = name |> slug
    domain_school = :domain_school_emails |> fetch |> pick

    "#{name}@#{domain_school}"
  end

  defp build_name_email do
    0..3
    |> pick
    |> build_name_email
  end

  defp build_name_email(0) do
    "#{first_name()} #{last_name()}"
  end

  defp build_name_email(1) do
    "#{last_name()} #{first_name()}"
  end

  defp build_name_email(2) do
    "#{first_name()}"
  end

  defp build_name_email(3) do
    "#{last_name()}"
  end

  defp first_name do
    :first_names |> fetch |> pick
  end

  defp last_name do
    :last_names |> fetch |> pick
  end

  @doc """
  Return an user name

  ## Examples

  ```
  iex> FakerElixir.Internet.user_name
  "chadrick"
  ```
  """
  def user_name do
    choice = pick(0..1)
    do_user_name(choice)
  end

  defp do_user_name(0) do
    first_name = :first_names |> fetch |> pick
    user_name(first_name)
  end

  defp do_user_name(1) do
    first_name = :first_names |> fetch |> pick
    last_name = :last_names |> fetch |> pick
    name = "#{first_name} #{last_name}"

    user_name(name)
  end

  @doc """
  Return an user name for the name given

  ## Examples

  ```
  iex> FakerElixir.Internet.user_name("Jeremie GES")
  "jeremie.ges"
  ```
  """
  def user_name(name) do
    name |> slug
  end

  @doc """
  Return an url

  ## Examples

  ```
  iex> FakerElixir.Internet.url
  "http://www.alejandra-connelly.com/"
  ```
  """
  def url do
    domain = do_url()

    "http://#{domain}/"
  end

  @doc """
  Return an url with https://

  ## Examples

  ```
  iex> FakerElixir.Internet.url(:safe)
  "https://www.stefan-little.org/"
  ```
  """
  def url(:safe) do
    domain = do_url()

    "https://#{domain}/"
  end

  defp do_url do
    choice = pick(0..1)

    do_url(choice)
  end

  defp do_url(0) do
    domain = :first_names |> fetch |> pick |> slug
    extension = :domain_extensions |> fetch |> pick

    "www.#{domain}.#{extension}"
  end

  defp do_url(1) do
    first_name = :first_names |> fetch |> pick |> slug
    last_name = :last_names |> fetch |> pick |> slug
    extension = :domain_extensions |> fetch |> pick

    "www.#{first_name}-#{last_name}.#{extension}"
  end

  @doc """
  Return a password given by an user

  ## Examples

  ```
  iex> FakerElixir.Internet.password(:weak)
  "robbie"
  ```

  ```
  iex> FakerElixir.Internet.password(:normal)
  "francesco6"
  ```

  ```
  iex> FakerElixir.Internet.password(:strong)
  "tOu%Mt*B16ueLs!0uA3rDA"
  ```
  """
  def password(:weak) do
    0..1
    |> pick
    |> do_password_weak
  end

  def password(:normal) do
    0..1
    |> pick
    |> do_password_normal
  end

  def password(:strong) do
    do_password_strong()
  end


  ##
  # What's a weak password ?
  #
  # - Default passwords such as: password, default, admin, guest, etc.
  # - Common sequences from a keyboard row:  qwerty, 12345, asdfgh, fred, etc
  # - Firstname
  ##

  ##
  # We fetch a pre-defined weak password from the locale
  ##
  defp do_password_weak(0) do
    :weak_passwords
    |> fetch
    |> pick
  end

  ##
  # We fetch a pre-defined first name from the locale
  ##
  defp do_password_weak(1) do
    :first_names
    |> fetch
    |> pick
    |> keep_strict_alpha_numeric
    |> String.downcase
  end

  ##
  # What's a normal password ?
  #
  # - First name with numbers
  # - Full name
  #
  # Complexifiers:
  # - Upcase first char
  ##

  ##
  # We fetch a pre-defined first name from the locale,
  # we append a number to it and we call (or not) the normal
  # complexifier algo.
  ##
  defp do_password_normal(0) do
    number_patterns = ["#", "##", "###"]

    first_name = :first_names |> fetch |> pick |> normalize_name
    number = number_patterns |> pick |> numerify

    password = "#{first_name}#{number}"

    if should_complexify?() do
      normal_complexifier(password)
    else
      password
    end

  end

  ##
  # We fetch a pre-defined first name, last name and we call (or not)
  # the normal complexifier algo.
  ##
  defp do_password_normal(1) do
    first_name = :first_names |> fetch |> pick |> normalize_name
    last_name = :last_names |> fetch |> pick |> normalize_name

    password = "#{first_name}#{last_name}"

    if should_complexify?() do
      normal_complexifier(password)
    else
      password
    end
  end

  ##
  # We just capitalize the password given.
  ##
  defp normal_complexifier(password) do
    password |> String.capitalize
  end

  ##
  # What's a strong password ?
  #
  # - Something which just doesn't mean shit
  #
  # Complexifiers:
  # - Special chars
  # - Some upcase + number
  ##
  defp do_password_strong do

    # We take between 3 / 4 words, we shuffle them and we return
    # a string
    password = Stream.repeatedly(&pick_word/0)
      |> Enum.take(pick(3..4))
      |> Enum.shuffle
      |> Enum.join

    # Let's pick randomly the algo which will
    # complexify the password
    password =
      0..2
      |> pick
      |> strong_complexifier(password)

    # We shuffle the string and we are done
    password
    |> String.split("")
    |> Enum.shuffle
    |> Enum.join
  end

  ##
  # Take between 3 and 4 special chars and we append it to the password
  ##
  defp strong_complexifier(0, password) do
    special_chars =
      ~w(/ * ? ! %)
      |> Enum.shuffle
      |> Enum.take(pick(3..4))
      |> Enum.join

    "#{password}#{special_chars}"
  end

  ##
  # We append a number to the password
  ##
  defp strong_complexifier(1, password) do
    numbers =
      ~w(## ### ####)
      |> pick
      |> numerify

    password = upcase_random_chars(password)

    "#{password}#{numbers}"
  end

  ##
  # We run two algo to complexify the password
  ##
  defp strong_complexifier(2, password) do
    password = strong_complexifier(0, password)
    password = strong_complexifier(1, password)

    password
  end

  ##
  # We will upcase some chars of the password given
  ##
  defp upcase_random_chars(password) do
    password
    |> String.split("")
    |> Enum.map_join("", fn(x) ->
      if should_upcase?() do
        String.upcase(x)
      else
        x
      end
    end)
  end

  ##
  # Pick a pre-defined word from the current locale
  ##
  defp pick_word do
    :words |> fetch |> pick |> normalize_name
  end

  ##
  # Return true or false
  ##
  defp pick_true_or_false do
    [true, false] |> pick
  end


  defp should_complexify? do
    pick_true_or_false()
  end

  defp should_upcase? do
    pick_true_or_false()
  end

  ##
  # Keep only strict alpha numeric chars and downcase the name
  ##
  defp normalize_name(name) do
    name
    |> keep_strict_alpha_numeric
    |> String.downcase
  end

end
