defmodule Myapp.CustomersFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Myapp.Customers` context.
  """

  @doc """
  Generate a customer.
  """
  def customer_fixture(attrs \\ %{}) do
    {:ok, customer} =
      attrs
      |> Enum.into(%{
        email_address: "some email_address",
        name: "some name"
      })
      |> Myapp.Customers.create_customer()

    customer
  end
end
