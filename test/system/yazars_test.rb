require "application_system_test_case"

class YazarsTest < ApplicationSystemTestCase
  setup do
    @yazar = yazars(:one)
  end

  test "visiting the index" do
    visit yazars_url
    assert_selector "h1", text: "Yazars"
  end

  test "creating a Yazar" do
    visit yazars_url
    click_on "New Yazar"

    fill_in "Isim", with: @yazar.isim
    click_on "Create Yazar"

    assert_text "Yazar was successfully created"
    click_on "Back"
  end

  test "updating a Yazar" do
    visit yazars_url
    click_on "Edit", match: :first

    fill_in "Isim", with: @yazar.isim
    click_on "Update Yazar"

    assert_text "Yazar was successfully updated"
    click_on "Back"
  end

  test "destroying a Yazar" do
    visit yazars_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Yazar was successfully destroyed"
  end
end
