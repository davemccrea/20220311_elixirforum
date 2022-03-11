defmodule Myapp.Repo.Migrations.CreateCustomers do
  use Ecto.Migration

  def change do
    create table(:customers) do
      add :name, :string
      add :email_address, :string

      timestamps()
    end
  end
end
