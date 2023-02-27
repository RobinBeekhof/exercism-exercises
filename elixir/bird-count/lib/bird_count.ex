defmodule BirdCount do
  @spec today([integer]) :: nil | integer
  def today([]), do: nil
  def today([today | _]), do: today

  @spec increment_day_count([integer]) :: [integer]
  def increment_day_count([]), do: [1]
  def increment_day_count([today | tail]), do: [today + 1 | tail]

  @spec has_day_without_birds?([integer]) :: boolean
  def has_day_without_birds?([]), do: false
  def has_day_without_birds?([count | _]) when count == 0, do: true
  def has_day_without_birds?([_ | tail]), do: has_day_without_birds?(tail)

  @spec total([integer]) :: integer
  def total([]), do: 0
  def total([total | []]), do: total
  def total([total | [count | tail]]), do: total([total + count | tail])

  @spec busy_days([integer]) :: integer
  def busy_days(list), do: busy_days(0, list)

  @spec busy_days(integer, [integer]) :: integer
  defp busy_days(count, []), do: count

  defp busy_days(count, [daily | tail]) when daily >= 5,
    do: busy_days(count + 1, tail)

  defp busy_days(count, [_ | tail]), do: busy_days(count, tail)
end
