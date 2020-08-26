require "application_system_test_case"

class OrdersTest < ApplicationSystemTestCase
  setup do
    @order = orders(:one)
  end

  test "visiting the index" do
    visit orders_url
    assert_selector "h1", text: "Orders"
  end

  test "creating a Order" do
    visit orders_url
    click_on "New Order"

    fill_in "Account name", with: @order.account_name
    fill_in "Equipment type", with: @order.equipment_type
    fill_in "Make", with: @order.make
    fill_in "Model", with: @order.model
    fill_in "Purchase order", with: @order.purchase_order
    fill_in "Serial", with: @order.serial
    fill_in "Ship date", with: @order.ship_date
    fill_in "User", with: @order.user_id
    fill_in "Work order", with: @order.work_order
    click_on "Create Order"

    assert_text "Order was successfully created"
    click_on "Back"
  end

  test "updating a Order" do
    visit orders_url
    click_on "Edit", match: :first

    fill_in "Account name", with: @order.account_name
    fill_in "Equipment type", with: @order.equipment_type
    fill_in "Make", with: @order.make
    fill_in "Model", with: @order.model
    fill_in "Purchase order", with: @order.purchase_order
    fill_in "Serial", with: @order.serial
    fill_in "Ship date", with: @order.ship_date
    fill_in "User", with: @order.user_id
    fill_in "Work order", with: @order.work_order
    click_on "Update Order"

    assert_text "Order was successfully updated"
    click_on "Back"
  end

  test "destroying a Order" do
    visit orders_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Order was successfully destroyed"
  end
end
