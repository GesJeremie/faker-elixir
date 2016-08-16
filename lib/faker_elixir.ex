defmodule FakerElixir do
  use Application

  @allowed_locales [:en, :fr]

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

  Note: Right now you can only pick between :fr and :en

  ## Examples

    iex> FakerElixir.set_locale(:fr)
    :ok

    iex> FakerElixir.set_locale(:en)
    :ok

    iex> FakerElixir.set_locale(:es)
    :error
  """
  def set_locale(locale) do
    if allowed_locale?(locale) do
      FakerElixir.Helpers.Store.set(:locale, locale)
    else
      :error
    end
  end

  @doc """
  Return the current locale set
  """
  def get_locale() do
    FakerElixir.Helpers.Store.get(:locale)
  end

  defp allowed_locale?(locale) do
    Enum.member?(@allowed_locales, locale)
  end

end
