require "application_system_test_case"

class Recipe1sTest < ApplicationSystemTestCase
  setup do
    @recipe1 = recipe1s(:one)
  end

  test "visiting the index" do
    visit recipe1s_url
    assert_selector "h1", text: "Recipe1s"
  end

  test "creating a Recipe1" do
    visit recipe1s_url
    click_on "New Recipe1"

    fill_in "Instructions", with: @recipe1.instructions
    fill_in "Title", with: @recipe1.title
    click_on "Create Recipe1"

    assert_text "Recipe1 was successfully created"
    click_on "Back"
  end

  test "updating a Recipe1" do
    visit recipe1s_url
    click_on "Edit", match: :first

    fill_in "Instructions", with: @recipe1.instructions
    fill_in "Title", with: @recipe1.title
    click_on "Update Recipe1"

    assert_text "Recipe1 was successfully updated"
    click_on "Back"
  end

  test "destroying a Recipe1" do
    visit recipe1s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Recipe1 was successfully destroyed"
  end
end
