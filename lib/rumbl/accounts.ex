defmodule Rumbl.Accounts do
  @moduledoc """
  The Accounts context.
  """
  alias Rumbl.Accounts.User

  def list_users do
    [
      %User{id: "1", name: "Diego", username: "diegolinhares"},
      %User{id: "2", name: "Oswaldo", username: "oswaldolinhares"},
      %User{id: "3", name: "Pablo", username: "pablobello"},
    ]
  end

  def get_user(id) do
    Enum.find(list_users(), fn map -> map.id == id end)
  end

  def get_user_by(params) do
    Enum.find(list_users(), fn map ->
      Enum.all?(params, fn {key, val} -> Map.get(map, key) == val end)
    end)
  end
end
