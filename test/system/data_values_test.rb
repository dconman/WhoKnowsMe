require "application_system_test_case"

class DataValuesTest < ApplicationSystemTestCase
  setup do
    @data_value = data_values(:one)
  end

  test "visiting the index" do
    visit data_values_url
    assert_selector "h1", text: "Data Values"
  end

  test "creating a Data value" do
    visit data_values_url
    click_on "New Data Value"

    click_on "Create Data value"

    assert_text "Data value was successfully created"
    click_on "Back"
  end

  test "updating a Data value" do
    visit data_values_url
    click_on "Edit", match: :first

    click_on "Update Data value"

    assert_text "Data value was successfully updated"
    click_on "Back"
  end

  test "destroying a Data value" do
    visit data_values_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Data value was successfully destroyed"
  end
end
