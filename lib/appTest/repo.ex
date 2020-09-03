defmodule AppTest.Repo do
  use Ecto.Repo,
    otp_app: :appTest,
    adapter: Ecto.Adapters.Postgres
end
