defmodule FakerElixir do

  @moduledoc """
  FakerElixir is an Elixir package that **generates fake data** for you. Whether you need to **seed** your database, create **factories** for your project, FakerElixir is here for you.


  ## Installation

  Can't wait to generate some fake data ? Follow the steps:

    1. Add `faker_elixir_octopus` to your list of dependencies in `mix.exs`:

    ```
    def deps do
      [{:faker_elixir_octopus, "> 0.0.0"}]
    end
    ```

    2. Ensure `faker_elixir` is started before your application:

    ```elixir
    def application do
      [applications: [:faker_elixir_octopus]]
    end
    ```

    3. Run in the root of your project:

    ```
    $ mix deps.get
    ```

    4. Faker Elixir is now a part of your application and ready to use!

  ## Usage

  Since I'm quite sure you are using Phoenix, I will show you a basic example:

  ```
  defmodule Zombie.AwesomeController do
    use Zombie.Web, :controller

    def index(conn, _params) do
      text conn, FakerElixir.Helper.pick(["zombie", "human"])
    end
  end
  ```

  Now if you keep refreshing your browser, the value should change. Awesome, you just understood how to use Faker.
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

  Right now only 4 locales are available: ```:fr```, ```:en```, ```:es```, ```:it```.

  If you set a different locale, FakerElixir will just fallback to ```:en``` (If you didn't provide a custom locale)

  Note: Keep in mind you can set the locale at the runtime, the locale set will keep his state until you set another locale

  ## Examples

  ```
  iex> FakerElixir.set_locale(:en)
  :ok
  iex> FakerElixir.Address.city
  "Baltimore"


  iex> FakerElixir.set_locale(:fr)
  :ok
  iex> FakerElixir.Address.city
  "Issy-les-Moulineaux"
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
