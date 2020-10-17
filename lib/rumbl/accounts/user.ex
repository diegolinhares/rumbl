defmodule Rumbl.Accounts.User do
  use Ecto.Schema

  import Ecto.Changeset

  @required_keys [:name, :username]

  # O schema e o field se referenciam aos dados da tabela e de uma struct.
  # Cada field corresponde a um field na struct "gerada".

  schema "users" do
    field :name, :string
    field :username, :string

    timestamps()
  end

  def changeset(user, attrs) do
    user
    |> cast(attrs, [:name, :username])
    |> validate_required(@required_keys)
    |> validate_length(:username, min: 1, max: 20)
  end
end
