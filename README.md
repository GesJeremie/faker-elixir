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
