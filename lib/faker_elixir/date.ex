defmodule FakerElixir.Date do

  import FakerElixir.Helpers.App

  @seconds_per_day 86400

  def birthday do
      between_16_years_to_80_years = 5840..29200
      backward(between_16_years_to_80_years)
  end


  def forward(range) when is_map(range) do
    range
      |> pick
      |> forward
  end

  def forward(days) when days >= 1 do
    do_create_date(days, :forward)
  end

  def backward(range) when is_map(range) do
    range
      |> pick
      |> backward
  end

  def backward(days) when days >= 1 do
    do_create_date(days, :backward)
  end

  defp do_create_date(days, type) do
    {years, month, day} = now_in_seconds
      |> shift(days, type)
      |> convert_seconds_to_date

    create_date(years, month, day)
  end

  defp shift(seconds, days, :forward) do
    days = @seconds_per_day * days
    seconds + days
  end

  defp shift(seconds, days, :backward) do
    days = @seconds_per_day * days
    seconds - days
  end

  defp create_date(year, month, day) do
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

    date |> DateTime.to_string
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
