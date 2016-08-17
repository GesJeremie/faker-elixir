defmodule FakerElixir do

  @moduledoc """
  **TODO: Copy Paste readme**
  """

  use Application

  @doc false
  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    children = [
      worker(FakerElixir.Helpers.Store, []),
    ]

    opts = [strategy: :one_for_one, name: FakerElixir.Supervisor]
    Supervisor.start_link(children, opts)
  end

  @doc """
  You can set your favorite locale at the run time !

  The default locale is: ```:en```

  ```Note:``` Right now you can only pick between ```:fr``` and ```:en```

  ## Examples

  ```
  iex> FakerElixir.set_locale(:en)
  :ok
  iex> FakerElixir.Address.city
  Baltimore"


  iex> FakerElixir.set_locale(:fr)
  :ok
  iex> FakerElixir.Address.city
  "Issy-les-Moulineaux"


  iex> FakerElixir.set_locale(:es)
  :error
  ```
  """
  def set_locale(locale) do
    FakerElixir.Helpers.Store.set(:locale, locale)
  end

  @doc """
  Return the current locale set

  ```
  iex> FakerElixir.get_locale
  :en
  """
  def get_locale() do
    FakerElixir.Helpers.Store.get(:locale)
  end


end
