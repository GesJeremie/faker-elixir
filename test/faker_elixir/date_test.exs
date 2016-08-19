defmodule FakerElixir.DateTest do

  use ExUnit.Case
  alias FakerElixir.Date

  test "backward/1" do
    cases = Stream.repeatedly(fn ->
      past = Date.backward(1) |> string_to_date
      assert before?(past, now())

      past = Date.backward(1..10) |> string_to_date
      assert before?(past, now())
    end)

    cases
      |> Enum.take(30)
  end

  test "birthday/0" do
    cases = Stream.repeatedly(fn ->
      birthday = Date.birthday |> string_to_date
      assert before?(birthday, now())
    end)

    cases
      |> Enum.take(30)
  end

  test "forward/1" do
    cases = Stream.repeatedly(fn ->
      future = Date.forward(1) |> string_to_date
      assert after?(future, now())

      future = Date.forward(1..10) |> string_to_date
      assert after?(future, now())
    end)

    cases
      |> Enum.take(30)
  end

  defp now do
    :calendar.local_time
      |> Tuple.to_list
      |> Enum.at(0)
      |> :calendar.date_to_gregorian_days
  end

  defp string_to_date(string) do
    string
      |> NaiveDateTime.from_iso8601!
      |> NaiveDateTime.to_erl
      |> Tuple.to_list
      |> Enum.at(0)
      |> :calendar.date_to_gregorian_days
  end

  defp before?(date, date2) do
    date < date2
  end

  defp after?(date, date2) do
    date > date2
  end

end
