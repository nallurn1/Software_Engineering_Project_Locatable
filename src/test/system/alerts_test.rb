require "application_system_test_case"

class AlertsTest < ApplicationSystemTestCase
  setup do
    @alert = alerts(:one)
  end

  test "visiting the index" do
    visit alerts_url
    assert_selector "h1", text: "Alerts"
  end

  test "creating a Alert" do
    visit alerts_url
    click_on "New Alert"

    fill_in "Alert text", with: @alert.alert_text
    fill_in "Alert type", with: @alert.alert_type
    fill_in "Contact", with: @alert.contact_id
    fill_in "User", with: @alert.user_id
    click_on "Create Alert"

    assert_text "Alert was successfully created"
    click_on "Back"
  end

  test "updating a Alert" do
    visit alerts_url
    click_on "Edit", match: :first

    fill_in "Alert text", with: @alert.alert_text
    fill_in "Alert type", with: @alert.alert_type
    fill_in "Contact", with: @alert.contact_id
    fill_in "User", with: @alert.user_id
    click_on "Update Alert"

    assert_text "Alert was successfully updated"
    click_on "Back"
  end

  test "destroying a Alert" do
    visit alerts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Alert was successfully destroyed"
  end
end
