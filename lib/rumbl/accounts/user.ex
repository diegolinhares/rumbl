defmodule Rumbl.Accounts.User do
  use Ecto.Schema

  import Ecto.Changeset

  # O schema e o field se referenciam aos dados da tabela e de uma struct.
  # Cada field corresponde a um field na struct "gerada".

  schema "users" do
    field :name, :string
    field :username, :string

    timestamps()
  end
end
