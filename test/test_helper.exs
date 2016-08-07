ExUnit.start

Mix.Task.run "ecto.create", ~w(-r PhoenixStripe.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r PhoenixStripe.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(PhoenixStripe.Repo)

