defmodule FakerElixir.Date do
  @moduledoc """
  Generate fake data for the domain Date
  """


  import FakerElixir.Helpers.App

  @seconds_per_day 86400

  @doc """
  Return birthday date

  ## Examples

  ```
  iex > FakerElixir.Date.birthday
  "1988-03-07 16:28:37Z"
  ```
  """
  def birthday do
    between_16_to_80_years = 5840..29200
    backward(between_16_to_80_years)
  end


  @doc """
  Return a date in the future

  ## Examples

  Context: 19 august 2016

  ```
  # Generate a random date time for tomorrow
  iex > FakerElixir.Date.forward(1)
  "2016-08-20 19:29:28Z"

  # Generate a random date time for after tomorrow
  iex > FakerElixir.Date.forward(2)
  "2016-08-21 19:06:12Z"

  # Generate a random date time between tomorrow and after tomorrow
  iex > FakerElixir.Date.forward(1..2)
  "2016-08-20 11:18:18Z"
  ```
  """
  def forward(range) when is_map(range) do
    range
    |> pick
    |> forward
  end

  def forward(days) when days >= 1 do
    do_create_date(days, :forward)
  end

  @doc """
  Return a date in the future

  ## Examples

  Context: 19 august 2016

  ```
  # Generate a random date time for yesterday
  iex > FakerElixir.Date.backward(1)
  "2016-08-18 05:58:04Z"

  # Generate a random date time for the day before yesterday
  iex > FakerElixir.Date.backward(2)
  "2016-08-17 00:15:28Z"

  # Generate a random date time between yesterday and the day before yesterday
  iex > FakerElixir.Date.backward(1..2)
  "2016-08-17 03:48:32Z"
  ```
  """
  def backward(range) when is_map(range) do
    range
    |> pick
    |> backward
  end

  def backward(days) when days >= 1 do
    do_create_date(days, :backward)
  end

  defp do_create_date(days, type) do
    now_in_seconds
    |> shift(days, type)
    |> convert_seconds_to_date
    |> create_date
  end

  defp shift(seconds, days, :forward) do
    days = @seconds_per_day * days
    seconds + days
  end

  defp shift(seconds, days, :backward) do
    days = @seconds_per_day * days
    seconds - days
  end

  defp create_date({year, month, day}) do
    date = %DateTime{
      year: year,
      month: month,
      day: day,
      hour: pick(0..23),
      minute: pick(0..59),
      second: pick(0..59),
      microsecond: {0, 0},
      zone_abbr: "UTC",
      utc_offset: 0,
      std_offset: 0,
      time_zone: "Etc/UTC"
    }

    date
    |> DateTime.to_string
  end

  defp convert_seconds_to_date(seconds) do
    :calendar.gregorian_seconds_to_datetime(seconds)
    |> Tuple.to_list
    |> Enum.at(0)
  end

  defp now_in_seconds do
    :calendar.local_time |> :calendar.datetime_to_gregorian_seconds
  end


end
