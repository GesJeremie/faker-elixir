# :octopus: FakerElixir

FakerElixir is an Elixir package that **generates fake data** for you. Whether you need to **seed** your database, create **factories** for your project, FakerElixir is for you :punch:.


## Installation

Can't wait to generate some fake data ? Follow the steps:

  1. Add `faker_elixir` to your list of dependencies in `mix.exs`:

    ```elixir
    def deps do
      [{:faker_elixir, "~> 0.1.0"}]
    end
    ```

  2. Ensure `faker_elixir` is started before your application:

    ```elixir
    def application do
      [applications: [:faker_elixir]]
    end
    ```
    
  3. Run in the root of your project: 
  
    ```
    $ mix deps.get
    ```
    
  4. Faker Elixir is now a part of your application and ready to use!

## Usage

Since I'm quite sure you are using Phoenix, I will show you a basic example:

```elixir
defmodule Zombie.AwesomeController do
  use Zombie.Web, :controller

  def index(conn, _params) do
    text conn, FakerElixir.Helper.pick(["zombie", "human"])
  end
end
```

Now if you keep refreshing your browser, the value should change. Awesome, you just understood how to use Faker :clap:.

#### :speech_balloon: "Sounds cool, but what about that ```FakerElixir``` namespace, it's quite boring to write that everytime :confused:"

You are right, you could use ```alias``` of elixir:

```elixir
defmodule Zombie.AwesomeController do
  use Zombie.Web, :controller

  alias FakerElixir, as: F

  def index(conn, _params) do
    text conn, F.Helper.pick(["zombie", "human"])
  end
end
```

#### :speech_balloon: "I followed the steps to install the package, but it doesn't work :angry: !!"

I guess you have an error similar to  ```something .... Store.has?() ..... something```. Well you just forgot to add ```:faker_elixir```:

```elixir
# mix.exs file

  def application do
    [mod: {Test, []},
     applications: [:phoenix, :phoenix_html, :cowboy, :logger, :gettext,
                    :phoenix_ecto, :postgrex, :faker_elixir]] # <---- here
  end

```
