defmodule WorldcupShuffle do
  @moduledoc """
  The awsome WorldcupShuffle module. 100% guaranteed fun.
  """

  @partecipants ["marco", "dot", "christian", "andrew", "daniel", "sam"]
  @teams ["brazil", "england", "sweden", "france", "belgium", "uruguay", "croatia", "russia"]

  defp match_them_up(partecipants, _teams) when length(partecipants) == 0 do
    IO.puts "------ GAME ON! ------"
  end

  defp match_them_up(partecipants, teams) do
    selected_team = Enum.random(teams)
    selected_partecipant = Enum.random(partecipants)

    IO.puts "#{selected_partecipant} => #{selected_team}"

    updated_team_list = List.delete(teams, selected_team)
    update_partecipants_list = List.delete(partecipants, selected_partecipant)

    match_them_up(update_partecipants_list, updated_team_list)
  end

  @doc """
  Randomize team list and patecipants, then join them up.
  """
  def go_shuffle() do
    t = Enum.shuffle(@teams)
    p = Enum.shuffle(@partecipants)

    match_them_up(p, t)
  end             
end

