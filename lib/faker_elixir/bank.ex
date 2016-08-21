defmodule FakerElixir.Bank do

  import FakerElixir.Helpers.App

  ##
  # %{type: visa, number: 424242424242, name: jeremie ges, expiration_date: 03/2016}
  ##
  def make_credit_card do

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
