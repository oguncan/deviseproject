require "application_system_test_case"

class KitapsTest < ApplicationSystemTestCase
  setup do
    @kitap = kitaps(:one)
  end

  test "visiting the index" do
    visit kitaps_url
    assert_selector "h1", text: "Kitaps"
  end

  test "creating a Kitap" do
    visit kitaps_url
    click_on "New Kitap"

    fill_in "Isim", with: @kitap.isim
    fill_in "Ozet", with: @kitap.ozet
    click_on "Create Kitap"

    assert_text "Kitap was successfully created"
    click_on "Back"
  end

  test "updating a Kitap" do
    visit kitaps_url
    click_on "Edit", match: :first

    fill_in "Isim", with: @kitap.isim
    fill_in "Ozet", with: @kitap.ozet
    click_on "Update Kitap"

    assert_text "Kitap was successfully updated"
    click_on "Back"
  end

  test "destroying a Kitap" do
    visit kitaps_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Kitap was successfully destroyed"
  end
end
