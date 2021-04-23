defmodule GradeTracker.Repo do
  use Ecto.Repo,
    otp_app: :grade_tracker,
    adapter: Ecto.Adapters.Postgres
end
