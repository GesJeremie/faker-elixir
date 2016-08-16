defmodule FakerElixir.HelperTest do

  use ExUnit.Case
  alias FakerElixir.Helper

  test "cycle/2" do

    # Basic cycle
    assert Helper.cycle(:fake, ["peter", "paris", "london"]) == "peter"
    assert Helper.cycle(:fake, ["peter", "paris", "london"]) == "paris"
    assert Helper.cycle(:fake, ["peter", "paris", "london"]) == "london"
    assert Helper.cycle(:fake, ["peter", "paris", "london"]) == "peter"
    assert Helper.cycle(:fake, ["peter", "paris", "london"]) == "paris"
    assert Helper.cycle(:fake, ["peter", "paris", "london"]) == "london"

    # Cycle in a struct (basic seed)
    warriors = Stream.repeatedly(fn() -> fixture(:warrior) end)
      |> Enum.take(5)

    IO.inspect warriors

    assert warriors |> Enum.at(0) == %{name: "anubis", lvl: 10}
    assert warriors |> Enum.at(1) == %{name: "zeus", lvl: 25}
    assert warriors |> Enum.at(2) == %{name: "behamut", lvl: 90}
    assert warriors |> Enum.at(3) == %{name: "anubis", lvl: 10}
    assert warriors |> Enum.at(4) == %{name: "zeus", lvl: 25}

  end

  defp fixture(:warrior) do
    %{
      name: Helper.cycle(:name, ["anubis", "zeus", "behamut"]),
      lvl: Helper.cycle(:lvl, [10, 25, 90])
    }
  end

end
