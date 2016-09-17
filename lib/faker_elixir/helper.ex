defmodule OverflowError do
  defexception [:message]
end

defmodule FakerElixir.Helper do
  @moduledoc """
  Provide useful helpers
  """

  alias FakerElixir.Helpers.{App, Store}

  @doc """
  Fill a pattern with random number

  ## Examples

  ```
  iex > FakerElixir.Helper.numerify("Apt. ###")
  "Apt. 902"

  iex > FakerElixir.Helper.numerify("06.##.##.##.##")
  "06.67.18.21.27"
  """
  def numerify(pattern), do: App.numerify(pattern)

  @doc """
  Fill a pattern with random letters

  ## Examples

  ```
  iex > FakerElixir.Helper.letterify("###")
  "ahh"

  iex > FakerElixir.Helper.letterify("#.#.#.#")
  "k.e.n.u"
  ```
  """
  def letterify(pattern), do: App.letterify(pattern)

  @doc """
  Pick randomly a value in an enumerable

  ## Examples

  ```
  iex> FakerElixir.Helper.pick(["paris", "athens", "london"])
  "london"
  ```

  ```
  iex> FakerElixir.Helper.pick(0..100)
  51
  ```
  """
  def pick(enumerable), do: App.pick(enumerable)

  @doc """
  Will iterate through the enumerable as a constant cycle. Really useful when you want to seed your database with a pre-defined cycle

  **Warning:** The id (first param given) should be unique for each different cycle

  ## Examples

  #### Basic

  ```
  iex(1)> FakerElixir.Helper.cycle(:zombies, ["Peter", "Audrey", "Laurent", "Frank"])
  "Peter"
  iex(2)> FakerElixir.Helper.cycle(:zombies, ["Peter", "Audrey", "Laurent", "Frank"])
  "Audrey"
  iex(3)> FakerElixir.Helper.cycle(:zombies, ["Peter", "Audrey", "Laurent", "Frank"])
  "Laurent"
  iex(4)> FakerElixir.Helper.cycle(:zombies, ["Peter", "Audrey", "Laurent", "Frank"])
  "Frank"
  iex(5)> FakerElixir.Helper.cycle(:zombies, ["Peter", "Audrey", "Laurent", "Frank"])
  "Peter"
  iex(6)> FakerElixir.Helper.cycle(:zombies, ["Peter", "Audrey", "Laurent", "Frank"])
  "Audrey"
  iex(7)> FakerElixir.Helper.cycle(:zombies, ["Peter", "Audrey", "Laurent", "Frank"])
  "Laurent"
  iex(8)> FakerElixir.Helper.cycle(:zombies, ["Peter", "Audrey", "Laurent", "Frank"])
  "Frank"

  # ... and so on.
  ```

  #### Seed example

  ```
  defmodule Seed do

    alias FakerElixir.Helper

    def make do
      warriors = Stream.repeatedly(fn() -> fixture(:warrior) end)
        |> Enum.take(5)
    end


    defp fixture(:warrior) do
      %{
        name: Helper.cycle(:name, ["anubis", "zeus", "behamut"]),
        lvl: Helper.cycle(:lvl, [10, 25, 90])
      }
    end

  end

  iex> Seed.make
  [
    %{lvl: 10, name: "anubis"},
    %{lvl: 25, name: "zeus"},
    %{lvl: 90, name: "behamut"},
    %{lvl: 10, name: "anubis"},
    %{lvl: 25, name: "zeus"}
  ]
  ```
  """
  def cycle(id, enumerable) do
    id = make_namespace(id, :cycle)
    
    stored = Store.has?(id)
    do_cycle(stored, id, enumerable)
  end


  defp do_cycle(false, id, enumerable) do

    # Fetch first value
    value = hd(enumerable)

    # Drop first value
    enumerable = Enum.drop(enumerable, 1)

    # Store
    Store.set(id, enumerable)

    # Display
    value
  end

  defp do_cycle(true, id, enumerable) do

    # Fetch list stored
    list = Store.get(id)

    # Fetch first value
    value = hd(list)

    # Refill the store
    if refill_store?(list) do
      Store.set(id, enumerable)
    else
      # Update
      Store.set(id, Enum.drop(list, 1))
    end

    # Display value
    value
  end

  @doc """
  Will generate only unique values for the function given. If **unique!/2** can't generate an unique value after X tries it raises an **OverflowError**. 

  **Warning:** The id (first param given) should be unique for each different unique functions


  ## Examples

  ### Generate unique emails
  
  ```
  # Create stream to generate unique emails
  stream = Stream.repeatedly(fn ->
  
    FakerElixir.Helper.unique!(:unique_emails, fn -> FakerElixir.Internet.email(:popular) end)
  
  end)

  # Grab 400 unique emails
  emails = 
    stream |> Enum.take(400)
  ```

  ### Basic Seed

  In this example you are sure the names and emails generated in the fixture are unique !
  ```
  defmodule Seed do

    alias FakerElixir.Helper

    def make do
      warriors = Stream.repeatedly(fn() -> fixture(:zombie) end)
        |> Enum.take(50)
    end


    defp fixture(:zombie) do
      %{
        name: Helper.unique!(:names, fn -> FakerElixir.Name.name end),
        email: Helper.unique!(:emails, fn -> FakerElixir.Internet.email(:popular) end)
      }
    end

  end

  iex> Seed.make
  [
    %{email: "leclerc@gmail.com", name: "Mathilde Rousselle"},
    %{email: "sarah@gmail.com", name: "Ambre Marie"},
    %{email: "lola@hotmail.fr", name: "Paul Carton"},
    %{email: "raffin.louise@gmail.com", name: "Lola Beguin"},
    %{email: "de.elisa@yahoo.fr", name: "Enzo Perret"},
    %{email: "clemence.dubos@free.fr", name: "Chloé Devaux"},
    %{email: "justine@hotmail.fr", name: "Mathilde Pouliquen"},
    %{email: "rousselle.jeanne@hotmail.fr", name: "Léo Monin"},
    %{email: "monin.julien@gmail.com", ...},
    %{email: "metais.celia@yahoo.fr", ...}
  ]
  ```
  """
  def unique!(id, func) do
    # Namespace the id
    id = make_namespace(id, :unique)
    
    stored = Store.has?(id)
    do_unique!(stored, id, func)
  end

  defp do_unique!(false, id, func) do
    # It means it's the first time the helper
    # is executed for this id
    value = func.()

    # Let's push the value in the store
    Store.set(id, [value])

    # Return the value
    value
  end

  defp do_unique!(true, id, func) do
    # It means it's not the first time
    # the helper is executed for this id
    value = func.()

    # Let's check if the value exists in the store
    list = Store.get(id)

    if Enum.member?(list, value) do
      # It already exists, let's try again
      do_retry_unique!(count_retry(id), id, func)
    else

      # Reset flag retry
      reset_retry(id)
      
      # Update the list in the store
      list = [value | list]

      # Store it 
      Store.set(id, list)

      # Return value
      value
    end
  end

  defp do_retry_unique!(10000, _, _) do
    raise OverflowError, "Impossible to generate an unique value"
  end

  defp do_retry_unique!(_, id, func) do
    increment_retry(id)

    do_unique!(true, id, func)  
  end

  defp reset_retry(id) do
    id = make_namespace(id, :retry)

    if Store.has?(id) do
      Store.drop(id)  
    end
  end

  defp count_retry(id) do
    id = make_namespace(id, :retry)

    count = Store.get(id)

    case count do
      nil -> 0
      _ -> count
    end

  end

  defp increment_retry(id) do
    current = count_retry(id)

    id = make_namespace(id, :retry)
    
    increment = current + 1

    Store.set(id, increment)
  end

  defp make_namespace(id, type) do
    String.to_atom("#{type}_#{id}")
  end

  defp refill_store?(list) do
    length(list) == 1
  end

end
