require "test_helper"

class UploadInformationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @upload_information = upload_informations(:one)
  end

  test "should get index" do
    get upload_informations_url
    assert_response :success
  end

  test "should get new" do
    get new_upload_information_url
    assert_response :success
  end

  test "should create upload_information" do
    assert_difference('UploadInformation.count') do
      post upload_informations_url, params: { upload_information: { addresse: @upload_information.addresse, efternavn: @upload_information.efternavn, fornavn: @upload_information.fornavn, postnummer: @upload_information.postnummer, user_id: @upload_information.user_id } }
    end

    assert_redirected_to upload_information_url(UploadInformation.last)
  end

  test "should show upload_information" do
    get upload_information_url(@upload_information)
    assert_response :success
  end

  test "should get edit" do
    get edit_upload_information_url(@upload_information)
    assert_response :success
  end

  test "should update upload_information" do
    patch upload_information_url(@upload_information), params: { upload_information: { addresse: @upload_information.addresse, efternavn: @upload_information.efternavn, fornavn: @upload_information.fornavn, postnummer: @upload_information.postnummer, user_id: @upload_information.user_id } }
    assert_redirected_to upload_information_url(@upload_information)
  end

  test "should destroy upload_information" do
    assert_difference('UploadInformation.count', -1) do
      delete upload_information_url(@upload_information)
    end

    assert_redirected_to upload_informations_url
  end
end
