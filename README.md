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

## Cheatsheet

Each functions of FakerElixir are well documented here: [documentation](http://www.example.com/).

But I know you, you will forget the syntax to generate a city and so on ... Don't waste your time in the documentation, just use this simple cheatsheet:

- [Faker.Address](#fakeraddress)
- [Faker.App](#fakerapp)
- [Faker.Avatar](#fakeravatar)
- [Faker.Boolean](#fakerboolean)
- [Faker.Crypto](#fakercrypto)
- [Faker.Helper](#fakerhelper)
- [Faker.Lorem](#fakercommerce)

### FakerElixir.Address
```elixir
FakerElixir.Address.building_number # "542"
FakerElixir.Address.city # "Portland"
FakerElixir.Address.country # "Iceland"
FakerElixir.Address.country_code # "NY"
FakerElixir.Address.latitude # -71.67369045432866
FakerElixir.Address.longitude # -114.67722189422487
FakerElixir.Address.make_country # %{code: "MY", name: "Malaysia"}
FakerElixir.Address.secondary_address # "Apt. 752"
FakerElixir.Address.state # "New Jersey"
FakerElixir.Address.state_code # "TX"
FakerElixir.Address.street_address # "786 Willow Parkways"
FakerElixir.Address.street_name # "McLaughlin Mills"
FakerElixir.Address.street_suffix # "Lodge"
FakerElixir.Address.time_zone # "Europe/Sarajevo"
FakerElixir.Address.zip_code # "59146-7626"
```

### FakerElixir.App
### FakerElixir.Avatar
### FakerElixir.Boolean
### FakerElixir.Crypto
### FakerElixir.Helper
### FakerElixir.Lorem


## Locales

## Customisation
