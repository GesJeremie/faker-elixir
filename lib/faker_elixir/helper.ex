defmodule FakerElixir.Helper do

  alias FakerElixir.Helpers.{App, Store}

  def pick(enumerable), do: App.pick(enumerable)

  def cycle(id, enumerable) do

    Store.has?(id)
      |> do_cycle(id, enumerable)

  end

  # Private

  defp do_cycle(false, id, enumerable) do
    # Fetch first value
    value = hd(enumerable)

    # Drop first value
    enumerable = Enum.drop(enumerable, 1)

    # Store
    Store.set(id, enumerable)

    # Display
    value
  end

  defp do_cycle(true, id, enumerable) do
    # Fetch list stored
    list = Store.get(id)

    # Fetch first value
    value = hd(list)

    # Refill the store
    if refill_store?(list) do
      Store.set(id, enumerable)
    else
      # Update
      Store.set(id, Enum.drop(list, 1))
    end

    # Display value
    value
  end

  defp refill_store?(list) do
    length(list) == 1
  end

end
