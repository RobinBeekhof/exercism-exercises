defmodule Username do
  def sanitize(username),
    do:
      username
      |> Enum.filter(
        &case &1 do
          &1 when &1 in [0..25] -> &1
          _ -> []
        end
      )

  # ä becomes ae
  # ö becomes oe
  # ü becomes ue
  # ß becomes ss

  # Please implement the sanitize/1 function
end
