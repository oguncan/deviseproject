require 'test_helper'

class YazarsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @yazar = yazars(:one)
  end

  test "should get index" do
    get yazars_url
    assert_response :success
  end

  test "should get new" do
    get new_yazar_url
    assert_response :success
  end

  test "should create yazar" do
    assert_difference('Yazar.count') do
      post yazars_url, params: { yazar: { isim: @yazar.isim } }
    end

    assert_redirected_to yazar_url(Yazar.last)
  end

  test "should show yazar" do
    get yazar_url(@yazar)
    assert_response :success
  end

  test "should get edit" do
    get edit_yazar_url(@yazar)
    assert_response :success
  end

  test "should update yazar" do
    patch yazar_url(@yazar), params: { yazar: { isim: @yazar.isim } }
    assert_redirected_to yazar_url(@yazar)
  end

  test "should destroy yazar" do
    assert_difference('Yazar.count', -1) do
      delete yazar_url(@yazar)
    end

    assert_redirected_to yazars_url
  end
end
