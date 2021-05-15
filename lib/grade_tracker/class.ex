defmodule GradeTracker.Class do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "classes" do
    field :active, :boolean, default: true
    field :name, :string
    field :subject, :string


    belongs_to :teacher, GradeTracker.Teacher

    timestamps()
  end

  @doc false
  def changeset(class, attrs) do
    class
    |> cast(attrs, [:name, :subject, :active, :teacher_id])
    |> validate_required([:name, :subject])
    |> foreign_key_constraint(:teacher_id)
  end
end
