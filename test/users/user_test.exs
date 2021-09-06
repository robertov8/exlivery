defmodule Exlivery.Users.UserTest do
  use ExUnit.Case

  alias Exlivery.Users.User

  import Exlivery.Factory

  describe "build/5" do
    test "when all params are valid, returns the user" do
      response =
        User.build(
          "Roberto Ribeiro",
          "roberto@mail.com",
          "123456789",
          27,
          "Rua x"
        )

      expected_response = {:ok, build(:user)}

      assert response == expected_response
    end

    test "when there are invalid params, return an error" do
      response =
        User.build(
          "Roberto Ribeiro",
          "roberto@mail.com",
          "123456789",
          0,
          "Rua x"
        )

      expected_response = {:error, "Invalid parameters"}

      assert response == expected_response
    end
  end
end
