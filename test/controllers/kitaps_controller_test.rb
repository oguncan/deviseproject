require 'test_helper'

class KitapsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @kitap = kitaps(:one)
  end

  test "should get index" do
    get kitaps_url
    assert_response :success
  end

  test "should get new" do
    get new_kitap_url
    assert_response :success
  end

  test "should create kitap" do
    assert_difference('Kitap.count') do
      post kitaps_url, params: { kitap: { isim: @kitap.isim, ozet: @kitap.ozet } }
    end

    assert_redirected_to kitap_url(Kitap.last)
  end

  test "should show kitap" do
    get kitap_url(@kitap)
    assert_response :success
  end

  test "should get edit" do
    get edit_kitap_url(@kitap)
    assert_response :success
  end

  test "should update kitap" do
    patch kitap_url(@kitap), params: { kitap: { isim: @kitap.isim, ozet: @kitap.ozet } }
    assert_redirected_to kitap_url(@kitap)
  end

  test "should destroy kitap" do
    assert_difference('Kitap.count', -1) do
      delete kitap_url(@kitap)
    end

    assert_redirected_to kitaps_url
  end
end
