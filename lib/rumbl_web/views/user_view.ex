defmodule RumblWeb.UserView do
  use RumblWeb, :view

  alias Rumbl.Accounts
  alias Accounts.User

  def first_name(%User{name: name}) do
    name
    |> String.split(" ")
    |> Enum.at(0)
  end
end
