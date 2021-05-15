defmodule GradeTracker.Repo.Migrations.CreateClasses do
  use Ecto.Migration

  def change do
    create table(:classes, primary_key: false) do
      add :id, :binary_id, primary_key: true
      add :name, :string
      add :subject, :string
      add :active, :boolean, default: true, null: false
      add :teacher_id, references(:teachers, on_delete: :delete_all, type: :binary_id)

      timestamps()
    end

    create index(:classes, [:teacher_id])
  end
end
