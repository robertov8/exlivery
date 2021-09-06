defmodule Exlivery.Factory do
  use ExMachina

  alias Exlivery.Users.User
  alias Exlivery.Orders.{Item, Order}

  def user_factory do
    %User{
      address: "Rua x",
      age: 27,
      cpf: "123456789",
      email: "roberto@mail.com",
      name: "Roberto Ribeiro"
    }
  end

  def item_factory do
    %Item{
      category: :pizza,
      description: "Pizza de peperoni",
      quantity: 1,
      unity_price: Decimal.new("35.5")
    }
  end

  def order_factory do
    %Order{
      delivery_address: "Rua x",
      items: [
        build(:item),
        build(:item,
          description: "Temaki de atum",
          category: :japonesa,
          quantity: 2,
          unity_price: Decimal.new("20.50")
        )
      ],
      total_price: Decimal.new("76.50"),
      user_cpf: "123456789"
    }
  end
end
