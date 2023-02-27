defmodule HighSchoolSweetheart do
  @spec first_letter(String.t()) :: String.t()
  def first_letter(name),
    do:
      name
      |> String.trim()
      |> String.first()

  @spec initial(String.t()) :: String.t()
  def initial(name),
    do:
      name
      |> first_letter()
      |> String.capitalize()
      |> Kernel.<>(".")

  @spec initials(String.t()) :: String.t()
  def initials(full_name),
    do:
      full_name
      |> String.split()
      |> Enum.map(&initial/1)
      |> Enum.map(&(&1 <> " "))
      |> Enum.join()
      |> String.trim()

  @spec pair(String.t(), String.t()) :: String.t()
  def pair(full_name1, full_name2),
    do:
      [full_name1, full_name2]
      |> Enum.map(&initials/1)
      |> heart()

  @spec heart([String.t()]) :: String.t()
  defp heart([i1 | i2]),
    do: """
         ******       ******
       **      **   **      **
     **         ** **         **
    **            *            **
    **                         **
    **     #{i1}  +  #{i2}     **
     **                       **
       **                   **
         **               **
           **           **
             **       **
               **   **
                 ***
                  *
    """
end
