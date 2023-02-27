defmodule TakeANumber do
  def start() do
    spawn(fn -> loop(%{state: 0}) end)
  end

  defp loop(map) do
    receive do
      {:report_state, caller} ->
        send(caller, map[:state])
        loop(map)

      {:take_a_number, caller} ->
        send(caller, map[:state] + 1)
        loop(Map.update!(map, :state, &(&1 + 1)))

      :stop ->
        {:ok, :stopped}

      _ ->
        loop(map)
    end
  end
end
