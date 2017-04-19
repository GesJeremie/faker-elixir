defmodule FakerElixir.Bank do
  @moduledoc """
  Generate fake date related to the Bank domain
  """
  import FakerElixir.Helpers.App

  @doc """
  Generate a credit card with details

  ## Examples

  ```
  iex> FakerElixir.Bank.make_credit_card
  %{cvv: "188", expiration_date: "12/2006", name: "LLEWELLYN WEBER", number: "601141761193874", type: "Discover Card"}
  ```
  """
  def make_credit_card do
    card = pick_card()
    card_number = card.number_patterns |> pick |> numerify
    first_name = :first_names |> fetch |> pick
    last_name = :last_names |> fetch |> pick
    name = "#{first_name} #{last_name}" |> remove_accents |> String.upcase

    %{
      type: card.type,
      number: card_number,
      name: name,
      expiration_date: credit_card_expiration_date(),
      cvv: credit_card_cvv()
    }
  end

  @doc """
  Return a credit card number

  ## Examples

  ```
  iex> FakerElixir.Bank.credit_card_number
  "34521702751096"
  ```
  """
  def credit_card_number do
    card = pick_card()

    card.number_patterns |> pick |> numerify
  end

  @doc """
  Return a credit card type

  ## Examples

  ```
  iex> FakerElixir.Bank.credit_card_type
  "MasterCard"
  ```
  """
  def credit_card_type do
    pick_card().type
  end

  @doc """
  Generate a credit card CVV

  ## Examples

  ```
  iex> FakerElixir.Bank.credit_card_cvv
  "914"
  ```
  """
  def credit_card_cvv do
    card = pick_card()

    card.cvv_patterns |> pick |> numerify
  end

  @doc """
  Return a credit card expiration date (more chances to be a valid one)

  ## Examples

  ```
  iex> FakerElixir.Bank.credit_card_expiration_date
  "08/2017"
  ```
  """
  def credit_card_expiration_date do
    [:valid, :valid, :invalid] |> pick |> credit_card_expiration_date
  end

  @doc """
  Return a valid or invalid credit card expiration date

  ## Examples

  ```
  iex> FakerElixir.Bank.credit_card_expiration_date(:valid)
  "06/2023"
  ```

  ```
  iex> FakerElixir.Bank.credit_card_expiration_date(:invalid)
  "03/2009"
  ```

  """
  def credit_card_expiration_date(:valid) do

    year = current_year() + (1..12 |> pick)
    month = pick_month()

    "#{month}/#{year}"
  end

  def credit_card_expiration_date(:invalid) do
    year = current_year() - (1..12 |> pick)
    month = pick_month()

    "#{month}/#{year}"
  end

  @doc """
  Return the name of a bank

  ## Examples

  ```
  iex> FakerElixir.Bank.name
  "Goldman Sachs Group"
  ```
  """
  def name do
    :bank_names |> fetch |> pick
  end


  ##
  # Pick randomly a card
  ##
  defp pick_card do
    :credit_cards |> fetch |> pick
  end

  ##
  # Pick randomly a month
  ##
  defp pick_month do
    1..12 |> pick |> Integer.to_string |>  String.pad_leading(2, "0")
  end

  ##
  # Return the current year
  ##
  defp current_year do
    {year, _month, _day} = :calendar.local_time |> Tuple.to_list |> Enum.at(0)
    year
  end

end
