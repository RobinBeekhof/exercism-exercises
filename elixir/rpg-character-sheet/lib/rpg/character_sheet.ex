defmodule RPG.CharacterSheet do
  @spec welcome :: :ok
  def welcome(), do: IO.puts("Welcome! Let's fill out your character sheet together.")

  def ask_name(),
    do:
      IO.gets("What is your character's name?\n")
      |> String.trim()

  def ask_class(),
    do:
      IO.gets("What is your character's class?\n")
      |> String.trim()

  def ask_level(),
    do:
      IO.gets("What is your character's level?\n")
      |> String.trim()
      |> String.to_integer()

  def run(),
    do:
      %{}
      |> (fn i ->
            welcome()
            i
          end).()
      |> Map.put(:name, ask_name())
      |> Map.put(:class, ask_class())
      |> Map.put(:level, ask_level())
      |> IO.inspect(label: "Your character")
end
