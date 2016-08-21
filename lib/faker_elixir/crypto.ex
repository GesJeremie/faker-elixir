defmodule FakerElixir.Crypto do
  @moduledoc """
  Generate fake data for the domain crypto
  """

  alias FakerElixir.Lorem

  @doc """
  Return ```md5``` hash

  ## Example

  ```
  iex> FakerElixir.Crypto.md5
  "9FE3CFD7113162785ED3D59C73166766"
  ```
  """
  def md5 do
    crypt_with(:md5)
  end

  @doc """
  Return ```sha1``` hash

  ## Example

  ```
  iex> FakerElixir.Crypto.sha1
  "7D6757DDD455FC6AA25C0D78C1CDE73B21028CD7"
  ```
  """
  def sha1 do
    crypt_with(:sha)
  end

  @doc """
  Return ```sha224``` hash

  ## Example

  ```
  iex> FakerElixir.Crypto.sha224
  "824B34965B6A3E48BE71E09A54F63BC216845D794EB378E756EE759D"
  ```
  """
  def sha224 do
    crypt_with(:sha224)
  end


  @doc """
  Return ```sha256``` hash

  ## Example

  ```
  iex> FakerElixir.Crypto.sha256
  "4762E04FB860A8A7C4D58B495DE133355D069CF618A55BBACA98583DF105818C"
  ```
  """
  def sha256 do
    crypt_with(:sha256)
  end

  @doc """
  Return ```sha384``` hash

  ## Example

  ```
  iex> FakerElixir.Crypto.sha384
  "9C01EBA98F4A52F76948D48A0FB3C63C26DE451667F8957C6420B6D26183F93C28A3A344406C77FF74C877EE5AA3AD10"
  ```
  """
  def sha384 do
    crypt_with(:sha384)
  end


  @doc """
  Return ```sha512``` hash

  ## Example

  ```
  iex> FakerElixir.Crypto.sha512
  "06C1CC54DC49E53B1274D9A0DD951B76DD45731E0AB319D98575DEA1955F6A0B20D5B70548190119AED52A5254127A60511257673C332F759F9510B8F32AAC26"
  ```
  """
  def sha512 do
    crypt_with(:sha512)
  end


  defp crypt_with(algo) do
    word = Lorem.characters()

    algo
    |> :crypto.hash(word)
    |> Base.encode16
  end



end
