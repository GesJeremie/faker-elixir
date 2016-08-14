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

  def get_locale() do
    FakerElixir.Helpers.Store.get(:locale)
  end

  def set_locale(locale) do
    if allowed_locale?(locale) do
      FakerElixir.Helpers.Store.set(:locale, locale)
    end
  end

  defp allowed_locale?(locale) do
    Enum.member?(@allowed_locales, locale)
  end

end
