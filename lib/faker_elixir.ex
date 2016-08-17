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
  The default locale used by FakerElixir is ```:en```.

  Right now only 2 locales are available: ```:fr```, ```:en```.

  If you set a different locale, FakerElixir will just fallback to ```:en``` (If you didn't provide a custom locale)

  Note: Keep in mind you can set the locale at the runtime, the locale set will keep his state until you set another locale

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
  :ok
  iex> FakerElixir.Address.city
  Baltimore"

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
