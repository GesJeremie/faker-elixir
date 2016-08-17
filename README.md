# :octopus: FakerElixir

FakerElixir is an Elixir package that **generates fake data** for you. Whether you need to **seed** your database, create **factories** for your project, FakerElixir is here for you :punch:.


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

  alias FakerElixir, as: Faker

  def index(conn, _params) do
    text conn, Faker.Helper.pick(["zombie", "human"])
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

- [Faker.Address](#fakerelixiraddress)
- [Faker.App](#fakerelixirapp)
- [Faker.Avatar](#fakerelixiravatar)
- [Faker.Boolean](#fakerelixirboolean)
- [Faker.Crypto](#fakerelixircrypto)
- [Faker.Helper](#fakerelixirhelper)
- [Faker.Lorem](#fakerelixircommerce)

### FakerElixir.Address
---
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
---
```elixir
FakerElixir.App.author # "Antonio Konopelski"
FakerElixir.App.name # "Chocolada"
FakerElixir.App.version # "8.1.7"
```

### FakerElixir.Avatar
---
```elixir
FakerElixir.Avatar.robohash # "https://robohash.org/fceuxke.png?size=300x300"
FakerElixir.Avatar.robohash("zombies-must-die") # "https://robohash.org/zombies-must-die.png?size=300x300"
FakerElixir.Avatar.robohash("zombies-forever", "400x400") # "https://robohash.org/zombies-forever.png?size=400x400"
FakerElixir.Avatar.robohash("i-love-a-zombie", "300x300", "jpg") # "https://robohash.org/i-love-a-zombie.jpg?size=300x300"
FakerElixir.Avatar.robohash("boring-slug", "230x230", "bmp", "set1") # "https://robohash.org/boring-slug.bmp?size=230x230&set=set1"
FakerElixir.Avatar.robohash("ahahahaha", "198x198", "jpg", "set2", "bg2") # "https://robohash.org/ahahahaha.jpg?size=198x198&set=set2&bgset=bg2"
```

### FakerElixir.Boolean
---
```elixir
FakerElixir.Boolean.boolean # true

# Return a boolean with a ratio chance to be true
# 1 = always true / 0 = always false / 0.1 = 10% chance to be true
FakerElixir.Boolean.boolean(1) # true
FakerElixir.Boolean.boolean(0) # false
FakerElixir.Boolean.boolean(0.1) # false
```

### FakerElixir.Crypto
---
```elixir
FakerElixir.Crypto.md5 # "9FE3CFD7113162785ED3D59C73166766"
FakerElixir.Crypto.sha1 # "7D6757DDD455FC6AA25C0D78C1CDE73B21028CD7"
FakerElixir.Crypto.sha224 # "824B34965B6A3E48BE71E09A54F63BC216845D794EB378E756EE759D"
FakerElixir.Crypto.sha256 # "4762E04FB860A8A7C4D58B495DE133355D069CF618A55BBACA98583DF105818C"
FakerElixir.Crypto.sha384 # "9C01EBA98F4A52F76948D48A0FB3C63C26DE451667F8957C6420B6D26183F93C28A3A344406C77FF74C877EE5AA3AD10"
FakerElixir.Crypto.sha512 # "06C1CC54DC49E53B1274D9A0DD951B76DD45731E0AB319D98575DEA1955F6A0B20D5B70548190119AED52A5254127A60511257673C332F759F9510B8F32AAC26"

```
### FakerElixir.Helper
---
```elixir
# Check out the documentation for this helper: URL:::::faker_elixir/doc/FakerElixir.Helper.html
FakerElixir.Helper.cycle(:zombies, ["Peter", "Audrey"]) # Peter
FakerElixir.Helper.cycle(:zombies, ["Peter", "Audrey"]) # Audrey
FakerElixir.Helper.cycle(:zombies, ["Peter", "Audrey"]) # Peter

FakerElixir.Helper.pick(["paris", "athens", "london"]) # "london"
FakerElixir.Helper.pick(0..100) # 51
```

### FakerElixir.Lorem
---
```elixir
FakerElixir.Lorem.character # "c"

FakerElixir.Lorem.characters # "0ycp0x"
FakerElixir.Lorem.characters(2) # "rj"
FakerElixir.Lorem.characters(10..30) # "rhch0bceu38240vds"

FakerElixir.Lorem.sentence # "Qui maiores quaerat iusto quod in totam consequatur perspiciatis necessitatibus vitae."

FakerElixir.Lorem.sentences(2) # "Qui omnis distinctio optio quisquam non optio id sequi assumenda corrupti distinctio et et inventore libero mollitia et. Cum doloremque sapiente mollitia nulla harum pariatur natus voluptates maxime consequuntur sunt commodi blanditiis ut nam."
FakerElixir.Lorem.sentences(3..5) # "Culpa velit labore tenetur quia ipsum ullam dolore ut et commodi. Fuga quia dolore nihil non laudantium molestias nemo voluptas ea voluptatum aut aspernatur voluptatem. Repellendus illo dolorem incidunt quasi possimus quam quae alias recusandae unde aliquam optio rem velit sint eum. Quo aliquid itaque ratione eum blanditiis commodi explicabo perspiciatis nesciunt pariatur dolor eius voluptas."

FakerElixir.Lorem.word # "et"

FakerElixir.Lorem.words # "pariatur ea eos quibusdam velit debitis et"
FakerElixir.Lorem.words(3) # "sapiente optio dolor"
FakerElixir.Lorem.words(2..4) # "laudantium rem saepe qui"
```

## Locales

### General
---
The default locale used by FakerElixir is ```:en```. Right now only 2 locales are available: ```:fr```, ```:en```.

If you set a different locale, FakerElixir will just fallback to ```:en``` (If you didn't provide a custom locale)

**Note:** Keep in mind you can set the locale at the runtime, the locale set will keep his state until you set another locale.

#### Basic example
```elixir
FakerElixir.set_locale(:en) # :ok
FakerElixir.Address.city # "Baltimore"

FakerElixir.set_locale(:fr) # :ok
FakerElixir.Address.city # "Issy-les-Moulineaux"

FakerElixir.set_locale(:es) # :ok
FakerElixir.get_locale # :es
```

#### Phoenix Example
```elixir
defmodule Zombie.AwesomeController do
  use Zombie.Web, :controller
  alias FakerElixir, as: Faker

  def index(conn, _params) do

    Faker.set_locale(:en)
    city_en = Faker.Address.city

    Faker.set_locale(:fr)
    city_fr = Faker.Address.city

    text conn, "#{city_en} / #{city_fr}"
  end
end

# Will produce something like: Charlotte / Courbevoie
```

### Custom locale
---
Since this package is quite new we don't have enough locales out of the box. It could be possible you don't like the data provided too. That's why we let you the possibility to define / update the data !

#### Add a new locale
---
Let's say you are spanish and you want to create the ``:es`` locale, you just need to define a new module in your elixir / mix project:

```elixir
# locales/faker_elixir/es.ex
# It doesn't matter where you define your module tho.

defmodule FakerElixir.LocalesCustom.Es do
  
  # Let's "localize" the cities
  @cities ["Barcelona", "Madrid", "La Jonquera"]
  
  def cities, do: cities
  
end
```

Now when you will set the locale ```:es```, FakerElixir will pick your data:

```elixir
defmodule Test do
  
  alias FakerElixir, as: Faker
  
  def try do
    Faker.set_locale(:es)
    Faker.Address.city # Barcelona
  end
  
end
```


#### Edit a locale
---
Let's say you want to update the locale ```:fr``` for the method ```FakerElixir.Address.secondary_address````:

```elixir
# locales/faker_elixir/fr.ex
# It doesn't matter where you define your module tho.

defmodule FakerElixir.LocalesCustom.Fr do
  
  @secondary_addresses ["Sonnette. ##"]
  
  def secondary_addresses, do: @secondary_addresses
  
end
```

Now when you will set the locale ```:fr```, FakerElixir will pick your data:

```elixir
defmodule Test do
  
  alias FakerElixir, as: Faker
  
  def try do
    Faker.set_locale(:fr)
    Faker.Address.secondary_address # Sonnette. 12
  end
  
end
```

#### Skeleton 
---
The default skeleton for a locale is available here: [Skeleton](https://github.com/GesJeremie/faker-elixir/blob/master/lib/faker_elixir/locales/en.ex) 



