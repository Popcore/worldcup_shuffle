defmodule WorldcupShuffle do
  @moduledoc """
  The awsome WorldcupShuffle module. 100% guaranteed fun.
  """

  @participants ["marco", "dot", "christian", "andrew", "daniel", "sam"]
  @teams ["brazil", "england", "sweden", "france", "belgium", "uruguay", "croatia", "russia"]

  defp match_them_up(participants, _teams) when length(participants) == 0 do
    IO.puts "------ GAME ON! ------"
  end

  defp match_them_up(participants, teams) do
    selected_team = Enum.random(teams)
    selected_participants = Enum.random(participants)

    IO.puts "#{selected_participants} => #{selected_team}"

    updated_team_list = List.delete(teams, selected_team)
    updated_participants_list = List.delete(participants, selected_participants)

    match_them_up(updated_participants_list, updated_team_list)
  end

  @doc """
  Randomize team list and patecipants, then join them up.
  """
  def go_shuffle() do
    t = Enum.shuffle(@teams)
    p = Enum.shuffle(@participants)

    match_them_up(p, t)
  end             
end

