defmodule FakerElixir.Bank do

  import FakerElixir.Helpers.App

  def make_credit_card do
    card = pick_card()
    card_number = card.number_patterns |> pick |> numerify
    first_name = :first_names |> fetch |> pick
    last_name = :last_names |> fetch |> pick
    name = "#{first_name} #{last_name}" |> String.upcase

    %{
      type: card.type,
      number: card_number,
      name: name,
      expiration_date: credit_card_expiration_date()
    }
  end

  def credit_card_number do
    card = pick_card()

    card.number_patterns |> pick |> numerify
  end

  def credit_card_type do
    pick_card().type
  end

  def credit_card_cvv do
    card = pick_card()

    card.cvv_patterns |> pick |> numerify
  end

  def credit_card_expiration_date do
    [:valid, :valid, :invalid] |> pick |> credit_card_expiration_date
  end

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

  def iban do

  end

  def swift do

  end

  def name do
    :bank_names |> fetch |> pick
  end

  defp pick_card do
    :credit_cards |> fetch |> pick
  end

  defp pick_month do
    1..12 |> pick |> Integer.to_string |>  String.pad_leading(2, "0")
  end

  defp current_year do
    {year, _month, _day} = :calendar.local_time |> Tuple.to_list |> Enum.at(0)
    year
  end

end
