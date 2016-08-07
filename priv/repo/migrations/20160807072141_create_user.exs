defmodule PhoenixStripe.Repo.Migrations.CreateUser do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :email, :string, null: false
      add :encrypted_password, :string
      add :username, :string, null: false

      timestamps
    end

    create unique_index(:users, [:email, :username])
  end
end
