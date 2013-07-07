Dynamo.under_test(DynoWeb.Dynamo)
Dynamo.Loader.enable
ExUnit.start

defmodule DynoWeb.TestCase do
  use ExUnit.CaseTemplate

  # Enable code reloading on test cases
  setup do
    Dynamo.Loader.enable
    :ok
  end
end
