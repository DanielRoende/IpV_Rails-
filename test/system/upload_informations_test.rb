require "application_system_test_case"

class UploadInformationsTest < ApplicationSystemTestCase
  setup do
    @upload_information = upload_informations(:one)
  end

  test "visiting the index" do
    visit upload_informations_url
    assert_selector "h1", text: "Upload Informations"
  end

  test "creating a Upload information" do
    visit upload_informations_url
    click_on "New Upload Information"

    fill_in "Addresse", with: @upload_information.addresse
    fill_in "Efternavn", with: @upload_information.efternavn
    fill_in "Fornavn", with: @upload_information.fornavn
    fill_in "Postnummer", with: @upload_information.postnummer
    fill_in "User", with: @upload_information.user_id
    click_on "Create Upload information"

    assert_text "Upload information was successfully created"
    click_on "Back"
  end

  test "updating a Upload information" do
    visit upload_informations_url
    click_on "Edit", match: :first

    fill_in "Addresse", with: @upload_information.addresse
    fill_in "Efternavn", with: @upload_information.efternavn
    fill_in "Fornavn", with: @upload_information.fornavn
    fill_in "Postnummer", with: @upload_information.postnummer
    fill_in "User", with: @upload_information.user_id
    click_on "Update Upload information"

    assert_text "Upload information was successfully updated"
    click_on "Back"
  end

  test "destroying a Upload information" do
    visit upload_informations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Upload information was successfully destroyed"
  end
end
