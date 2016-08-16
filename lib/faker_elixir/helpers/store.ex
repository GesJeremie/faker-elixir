defmodule FakerElixir.Helpers.Store do
  @moduledoc false

  def start_link do
    Agent.start_link(fn -> %{:locale => :en} end, name: __MODULE__)
  end

  def get(key) do
    if has?(key) do
      Agent.get(__MODULE__, fn(map) -> Map.fetch!(map, key) end)
    else
      nil
    end
  end

  def drop(key) do
    Agent.update(__MODULE__, &Map.delete(&1, key))
  end

  def set(key, value) do
    Agent.update(__MODULE__, &Map.put(&1, key, value))
  end

  def has?(key) do
    Agent.get(__MODULE__, fn(map) -> Map.has_key?(map, key) end)
  end

end
