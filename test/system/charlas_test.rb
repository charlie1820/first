require "application_system_test_case"

class CharlasTest < ApplicationSystemTestCase
  setup do
    @charla = charlas(:one)
  end

  test "visiting the index" do
    visit charlas_url
    assert_selector "h1", text: "Charlas"
  end

  test "creating a Charla" do
    visit charlas_url
    click_on "New Charla"

    click_on "Create Charla"

    assert_text "Charla was successfully created"
    click_on "Back"
  end

  test "updating a Charla" do
    visit charlas_url
    click_on "Edit", match: :first

    click_on "Update Charla"

    assert_text "Charla was successfully updated"
    click_on "Back"
  end

  test "destroying a Charla" do
    visit charlas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Charla was successfully destroyed"
  end
end
