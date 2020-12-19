require "application_system_test_case"

class CustomersTest < ApplicationSystemTestCase
  setup do
    @customer = customers(:one)
  end

  test "visiting the index" do
    visit customers_url
    assert_selector "h1", text: "Customers"
  end

  test "creating a Customer" do
    visit customers_url
    click_on "New Customer"

    fill_in "Contact number", with: @customer.Contact_Number
    fill_in "Customer name", with: @customer.Customer_Name
    fill_in "Customer address", with: @customer.Customer_address
    fill_in "Price", with: @customer.Price
    fill_in "Product name", with: @customer.Product_Name
    click_on "Create Customer"

    assert_text "Customer was successfully created"
    click_on "Back"
  end

  test "updating a Customer" do
    visit customers_url
    click_on "Edit", match: :first

    fill_in "Contact number", with: @customer.Contact_Number
    fill_in "Customer name", with: @customer.Customer_Name
    fill_in "Customer address", with: @customer.Customer_address
    fill_in "Price", with: @customer.Price
    fill_in "Product name", with: @customer.Product_Name
    click_on "Update Customer"

    assert_text "Customer was successfully updated"
    click_on "Back"
  end

  test "destroying a Customer" do
    visit customers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Customer was successfully destroyed"
  end
end
