defmodule Rumbl.Accounts.User do
  @required_keys [:id, :name, :username]

  defstruct @required_keys
end
