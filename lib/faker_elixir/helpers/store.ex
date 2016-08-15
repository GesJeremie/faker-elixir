defmodule FakerElixir.Helpers.Store do

  @moduledocset false
  
  def start_link do
    Agent.start_link(fn -> %{:locale => :en} end, name: __MODULE__)
  end

  def get(key) do
    Agent.get(__MODULE__, fn(map) -> Map.fetch!(map, key) end)
  end

  def drop(key) do
    Agent.get(__MODULE__, fn(map) -> Map.delete(map, key) end)
  end

  def set(key, value) do
    Agent.update(__MODULE__, &Map.put(&1, key, value))
  end

  def has?(key) do
    Agent.get(__MODULE__, fn(map) -> Map.has_key?(map, key) end)
  end

end
