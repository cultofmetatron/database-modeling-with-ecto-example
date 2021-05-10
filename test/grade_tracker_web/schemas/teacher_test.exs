defmodule GradeTracker.TeacherSchemaTest do
  use  GradeTracker.DataCase
  alias GradeTracker.Repo
  alias GradeTracker.Teacher

  test "we can insert a teacher", _ do
    assert {:ok, %Teacher{ id: _id, name: "Jose Valim" } = _teacher} = %Teacher{}
    |> Teacher.changeset(%{
      name: "Jose Valim"
    })
    |> Repo.insert()

  end

  test "inserting a teacher errors without a name", _ do
    assert {:error, %Ecto.Changeset{
      errors: [name: {"can't be blank", [validation: :required]}],
      valid?: false
    } = _changeset} = %Teacher{}
    |> Teacher.changeset(%{})
    |> Repo.insert()
  end

  test "updating a teacher errors without an id", _ do
    assert_raise Ecto.NoPrimaryKeyValueError, fn ->
      %Teacher{}
      |> Teacher.changeset(%{ name: "Dave Thomas" })
      |> Repo.update()
    end
  end

  test "deleting a teacher", _ do
    assert {:ok, teacher} = %Teacher{}
    |> Teacher.changeset(%{
      name: "Jose Valim"
    })
    |> Repo.insert()

    assert {:ok, teacher} = teacher
    |> Repo.delete()


  end


end
