defmodule Exlivery.Users.CreateOrUpdate do
  alias Exlivery.Users
  alias Users.Agent, as: UserAgent
  alias Users.User

  def call(%{name: name, address: address, email: email, cpf: cpf, age: age}) do
    name
    |> User.build(email, cpf, age, address)
    |> save_user()
  end

  defp save_user({:ok, %User{} = user}), do: UserAgent.save(user)
  defp save_user({:error, _reason} = error), do: error
end
